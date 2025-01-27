import StringTools;

var spooky = new Character(1100, 150, 'spooky-dad', true);
game.startCharacterPos(spooky, true);
game.add(spooky);
spooky.alpha = 0;
var chars = [
	"spookyNote" => spooky

];

for (name in chars.keys()) {
	game.variables.set(name, chars[name]);
}

function onCreatePost() {
	for (note in game.unspawnNotes) {
		for (name in chars.keys()) {
			if (note.noteType == name) {
				note.noAnimation = true;
				note.noMissAnimation = true;
			}
		}
	}
}
function onCountdownStarted() {
	new FlxTimer().start(Conductor.crochet / 1000 / game.playbackRate, function(tmr) {
		for (char in chars) {
			if (tmr.loopsLeft % char.danceEveryNumBeats == 0 && char.animation.curAnim != null && !StringTools.startsWith(char.animation.curAnim.name, "sing") && !char.stunned) {
				char.dance();
			}
		}
	}, 5);
}

function onBeatHit(){
	for (char in chars) {
		if (curBeat % char.danceEveryNumBeats == 0 && char.animation.curAnim != null && !StringTools.startsWith(char.animation.curAnim.name, "sing") && !char.stunned) {
			char.dance();
		}
	}

	if (curBeat == 320) {
		spooky.alpha = 1;
	}

	if (curBeat == 448) {
		game.remove(spooky);
		spooky = new Character(1100, 150, 'spooky-dad2', true);
		game.startCharacterPos(spooky, false);
		game.add(spooky);

		chars = [
		   "spookyNote" => spooky
		];
	}

	if (curBeat == 512) {
		game.remove(spooky);
		spooky = new Character(1100, 150, 'spooky-dad', true);
		game.startCharacterPos(spooky, false);
		game.add(spooky);

		chars = [
		   "spookyNote" => spooky
	    ];
    }
	if (curBeat == 576) {
		spooky.alpha = 0;
    }
    if (curBeat == 924) {
		game.remove(spooky);
		spooky = new Character(1100, 180, 'spooky-dad4', true);
		game.startCharacterPos(spooky, false);
		game.add(spooky);

		chars = [
		   "spookyNote" => spooky
	    ];
    }
    if (curBeat == 992) {
		game.remove(spooky);
		spooky = new Character(1080, 180, 'spooky-dad5', true);
		game.startCharacterPos(spooky, false);
		game.add(spooky);

		chars = [
		   "spookyNote" => spooky
	    ];
    }
}
function onStepHit() {
	if (curStep == 3584) {
	spooky = new Character(1100, 150, 'spooky-dad3', true);
	game.startCharacterPos(spooky, false);
	game.add(spooky);
	spooky.alpha = 1;
	chars = [
	 "spookyNote" => spooky
	];
  }
}
function goodNoteHit(note) {
	if (chars[note.noteType] != null) {
		var char = chars[note.noteType];
		var anim = ["singLEFT", "singDOWN", "singUP", "singRIGHT"][note.noteData % 4];
		char.playAnim(anim, true);
		char.holdTimer = 0;
	}
}

function onUpdatePost() {
	if (game.generatedMusic && !game.inCutscene && game.startedCountdown) {
		for (char in chars) {
			if (!char.stunned && char.animation.curAnim != null && char.holdTimer > Conductor.stepCrochet * (0.0011 / FlxG.sound.music.pitch) * char.singDuration && StringTools.startsWith(char.animation.curAnim.name, "sing") && !StringTools.endsWith(char.animation.curAnim.name, "miss")) {
				char.dance();
			}
		}
	}
}