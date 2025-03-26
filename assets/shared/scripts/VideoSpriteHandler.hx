// This is a fixed, revised version of this script.
// No need to precache stuff, just make a video sprite, and just don't play it until it's needed.
// Also added extra functions like, actually pausing, resuming and seeking a video.
// By: drew

import psychlua.LuaUtils;
import hxcodec.flixel.FlxVideo;

var globalData:Array<Array<Dynamic>> = [];

createGlobalCallback('makeVideoSprite', function(tag:String, videoFile:String, ?x:Float, ?y:Float, ?camera:String, ?shouldLoop:Bool, ?noAutoplay:Bool)
{
	var videoData:Array<Dynamic> = [];
	
	if (game.modchartSprites.exists(tag + '_video')) {
		debugPrint('makeVideoSprite: This tag is not available! Use a different tag.', FlxColor.RED);
		return;
	}
	
	if (!FileSystem.exists(Paths.video(videoFile))) {
		debugPrint('makeVideoSprite: The video file "' + videoFile + '" cannot be found!', FlxColor.RED);
		return;
	}
	
	var sprite:FlxSprite = new FlxSprite(x, y).makeGraphic(1, 1, FlxColor.TRANSPARENT);
	sprite.camera = LuaUtils.cameraFromString(camera);
	game.modchartSprites.set(tag + '_video', sprite);
	add(sprite);
	
	try {
	  if(FlxVideo) true;
	}
	catch(e) {
	  // Videos not allowed :c
	  return;
	}

	var video:FlxVideo = new FlxVideo();
	
	video.alpha = 0; // if this isn't there, the whole script crashes 

	// Local func
	video.onTextureSetup.add(() -> { sprite.loadGraphic(video.bitmapData); });
	
	video.play(Paths.video(videoFile), shouldLoop);
	var isPlaying = !noAutoplay;
	if(!isPlaying) video.set_volume(0); // Mute if it's not supposed to be playing yet
	fix(video);

	// Stop the video if noAutoplay
	// Allow some time to fill the video buffer while it's playing and then pause it.
	if(noAutoplay) new FlxTimer().start(0.15, ()-> {
		video.set_time(0);
		video.set_volume(1);
		video.pause();
		fix(video);
	});
	
	// Local func
	video.onEndReached.add(() -> { disposeVideoSprite(video, tag); }, true);
	
	FlxG.game.addChild(video);
	
	videoData.push(video);
	videoData.push(sprite);
	videoData.push(isPlaying);
	
	globalData.push(videoData);
});

// Pause and resume videos.
createGlobalCallback('resumeVideoSprite', function(tag:String) {
	var target:FlxSprite = game.modchartSprites.get(tag + '_video');
	if (target != null) {
		for (video in globalData) {
			if(video[0] != null && target == video[1]) {
				video[0].resume();
				fix(video);
				video[2] = true; // now it's playing
				break;
			}
		}
	}
});

createGlobalCallback('pauseVideoSprite', function(tag:String) {
	var target:FlxSprite = game.modchartSprites.get(tag + '_video');
	if (target != null) {
		for (video in globalData) {
			if(video[0] != null && target == video[1]) {
				video[0].pause();
				fix(video);
				video[2] = false;
				break;
			}
		}
	}
});

// a value of 1 equals to 1 second elapsed in the video (no shit)
createGlobalCallback('seekVideoSprite', function(tag:String, time:Float) {
	var target:FlxSprite = game.modchartSprites.get(tag + '_video');
	if (target != null) {
		for (video in globalData) {
			if(video[0] != null && target == video[1]) {
				video[0].set_time(time * 1000);
				break;
			}
		}
	}
});

createGlobalCallback('setVideoSpriteVolume', function(tag:String, volume:Float) {
	var target:FlxSprite = game.modchartSprites.get(tag + '_video');
	if (target != null) {
		for (video in globalData) {
			if(video[0] != null && target == video[1]) {
				video[0].set_volume(volume);
				break;
			}
		}
	}
});

// By default, the library already does this thing of pausing the video when the game loses focus
// The issue is that it resumes after even if the user paused it.
// FIX THAT. IT'S BAD CODE.
// VIDEO RESUMES EVEN IF IT'S PAUSED, WHAT'S THE POINT OF PAUSING THEN?! FINE, I'LL FIX IT MYSELF.
// Call this function after calling play(), resume() or pause()

function fix(video:FlxVideo) {
	if (FlxG.signals.focusGained.has(video.resume)) FlxG.signals.focusGained.remove(video.resume);
	if (FlxG.signals.focusLost.has(video.pause)) FlxG.signals.focusLost.add(video.pause);
}

function disposeVideoSprite(video:FlxVideo, tag:String) {
	if (FlxG.game.contains(video)) FlxG.game.removeChild(video);
	
	// Find video in our globalData stuff
	for(videoData in globalData) {
		if(video == videoData[0]) {
			globalData.remove(videoData);
			break;
		}
	}
	video.stop();
	video.dispose();
		
	if (game.modchartSprites.exists(tag + '_video')) {
		game.modchartSprites.get(tag + '_video').destroy();
		game.modchartSprites.remove(tag + '_video');
	}
			
	game.callOnLuas('onVideoFinished', [tag]);
		
	return;
}

function pauseVideos()
{
	for (video in globalData)
	{
		if (video[0] != null) {
			video[0].pause();
			fix(video);
		}
	}
}

function resumeVideos()
{	
	// Don't resume if game is paused
	if(paused) return;
	for (video in globalData)
	{
		// If video was playing, resume, otherwise don't change its state!!!!!!!!!!
		if(video[2]) {
			video[0].resume();
			fix(video);
		}
	}
}

// Don't think that I forgot about it. This is how you do it.
if (FlxG.autoPause) {
	FlxG.signals.focusGained.add(resumeVideos);
	FlxG.signals.focusLost.add(pauseVideos);
}

function onPause()
{
	pauseVideos();
}

function onResume()
{
	resumeVideos();
}

function onDestroy()
{
	for (video in globalData)
	{
		if (video[0] != null) video[0].dispose(); // Don't stop the video, dispose it and free memory!!!
	}

	if (FlxG.autoPause) {
		FlxG.signals.focusGained.remove(resumeVideos);
		FlxG.signals.focusLost.remove(pauseVideos);
	}
}

var pauseSubstates = ["URDEAD", "notesFix"];

function onCustomSubstateCreate(name)
{
	for (substate in pauseSubstates)
	{
		if (substate == name)
		{
			pauseVideos();
		}
	}
}