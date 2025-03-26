import flixel.addons.effects.FlxTrail; 
function onStepHit() {
if (curStep == 1024) {
var dadTrail = new FlxTrail(game.dad, null, 4, 10, 0.2, 0.05);
dadTrail.color = 0xFFFF0000;
addBehindDad(dadTrail);
}
}