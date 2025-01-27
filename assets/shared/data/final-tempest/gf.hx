import StringTools;

var GF2 = new Character(150, 180, 'gf-tempest-dark', false);
game.startCharacterPos(GF2, false);
game.add(GF2);
GF2.alpha = 0;
var chars = [
	"gfbfNote" => GF2,
	"dadgfNote" => GF2,
	"gfbfdadNote" => GF2,
	"gfNote" => GF2
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

			if (note.noteType == "gfbfdadNote") {
				note.noAnimation = false;
				note.noMissAnimation = true;
			}

			if (note.noteType == "gfbfNote") {
				note.noAnimation = false;
				note.noMissAnimation = true;
			}

			if (note.noteType == "gfdadNote") {
				note.noAnimation = false;
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

	if (curBeat == 127) {
		game.remove(GF2);
		GF2 = new Character(200, 200, 'gf-tempest', false);
		game.startCharacterPos(GF2, false);
		game.add(GF2);

		chars = [
	"gfbfNote" => GF2,
	"dadgfNote" => GF2,
	"gfbfdadNote" => GF2,
	"gfNote" => GF2
		];
	}

	if (curBeat == 576) {
		game.remove(GF2);
		GF2 = new Character(200, 230, 'gf-tempest-mom', false);
		game.startCharacterPos(GF2, false);
		game.add(GF2);

		chars = [
    "gfbfNote" => GF2,
	"dadgfNote" => GF2,
	"gfbfdadNote" => GF2,
	"gfNote" => GF2
	    ];
    }
    if (curBeat == 800) {
		game.remove(GF2);
		GF2 = new Character(200, 200, 'gf-tempest2', false);
		game.startCharacterPos(GF2, false);
		game.add(GF2);

		chars = [
    "gfbfNote" => GF2,
	"dadgfNote" => GF2,
	"gfbfdadNote" => GF2,
	"gfNote" => GF2
	    ];
    }
}
function onStepHit() {
	if (curStep == 254) {
		FlxTween.tween(GF2,{alpha :1},0.3);
	}
	if (curStep == 2816) {
		FlxTween.tween(GF2,{alpha :0},1);
	}
	if (curStep == 3072) {
		game.remove(GF2);
		GF2 = new Character(200, 230, 'gf-tempest-mom2', false);
		game.startCharacterPos(GF2, false);
		game.add(GF2);

		chars = [
    "gfbfNote" => GF2,
	"dadgfNote" => GF2,
	"gfbfdadNote" => GF2,
	"gfNote" => GF2
	    ];
    }
}
function opponentNoteHit(note) {
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