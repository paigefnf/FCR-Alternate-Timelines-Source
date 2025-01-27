import flixel.addons.effects.FlxTrail;
var bfTrail = new FlxTrail(game.boyfriend, null, 4, 10, 0.2, 0.05);
bfTrail.color = 0xFF3B00FF;
addBehindBF(bfTrail);
bfTrail.alpha = 0;
function onStepHit() {
if (curStep == 800) {
bfTrail.alpha = 0.2;
}
if (curStep == 896) {
bfTrail.alpha = 0;
}
if (curStep == 1104) {
bfTrail.alpha = 0.2;
}
if (curStep == 1296) {
bfTrail.alpha = 0;
}
}