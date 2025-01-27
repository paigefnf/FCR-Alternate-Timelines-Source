import objects.HealthIcon;

var spookyIcon = new HealthIcon('spooky-evil', true);
spookyIcon.y = game.healthBar.y - 40;
spookyIcon.cameras = [game.camHUD];
game.add(spookyIcon);
spookyIcon.alpha = 0;

var spookyIcon2 = new HealthIcon('spooky-uncorrupt1', true);
spookyIcon2.y = game.healthBar.y - 40;
spookyIcon2.cameras = [game.camHUD];
game.add(spookyIcon2);
spookyIcon2.alpha = 0;


var spookyIcon3 = new HealthIcon('spooky-evil', true);
spookyIcon3.y = game.healthBar.y - 40;
spookyIcon3.cameras = [game.camHUD];
game.add(spookyIcon3);
spookyIcon3.alpha = 0;

var spookyIcon4 = new HealthIcon('spooky-uncorrupt1', true);
spookyIcon4.y = game.healthBar.y - 40;
spookyIcon4.cameras = [game.camHUD];
game.add(spookyIcon4);
spookyIcon4.alpha = 0;

var spookyIcon5 = new HealthIcon('spooky-uncorrupt2', true);
spookyIcon5.y = game.healthBar.y - 40;
spookyIcon5.cameras = [game.camHUD];
game.add(spookyIcon5);
spookyIcon5.alpha = 0;

var spookyIcon6 = new HealthIcon('spooky-uncorrupt3', true);
spookyIcon6.y = game.healthBar.y - 40;
spookyIcon6.cameras = [game.camHUD];
game.add(spookyIcon6);
spookyIcon6.alpha = 0;

var momIcon = new HealthIcon('mom-angry', true);
momIcon.y = game.healthBar.y - 110;
momIcon.cameras = [game.camHUD];
game.add(momIcon);
momIcon.alpha = 0;

function onStepHit() {
if (curStep == 1280)
{
spookyIcon.alpha = 1;
}
if (curStep == 1792)
{
game.remove(spookyIcon);
spookyIcon2.alpha = 1;
}
if (curStep == 2048)
{
game.remove(spookyIcon2);
spookyIcon3.alpha = 1;
}
if (curStep == 2304)
{
spookyIcon3.alpha = 0;
}
if (curStep == 3584)
{
game.remove(spookyIcon3);
spookyIcon4.alpha = 1;
momIcon.alpha = 1;
}
if (curStep == 3696)
{
game.remove(spookyIcon4);
spookyIcon5.alpha = 1;

}
if (curStep == 3968)
{
game.remove(spookyIcon5);
spookyIcon6.alpha = 1;
}
}
function onUpdate(elapsed:Float) {
	var iconOffset:Int = 26;
	spookyIcon.x = game.healthBar.barCenter + (150 * spookyIcon.scale.x - 150) / 2 - iconOffset + 65;
	spookyIcon.animation.curAnim.curFrame = (game.healthBar.percent < 20) ? 1 : 0;
	spookyIcon.scale.set(game.iconP1.scale.x - 0.2, game.iconP1.scale.y - 0.2);
	spookyIcon.updateHitbox();

	spookyIcon2.x = game.healthBar.barCenter + (150 * spookyIcon2.scale.x - 150) / 2 - iconOffset + 65;
	spookyIcon2.animation.curAnim.curFrame = (game.healthBar.percent < 20) ? 1 : 0;
	spookyIcon2.scale.set(game.iconP1.scale.x - 0.2, game.iconP1.scale.y - 0.2);
	spookyIcon2.updateHitbox();

	spookyIcon3.x = game.healthBar.barCenter + (150 * spookyIcon3.scale.x - 150) / 2 - iconOffset + 65;
	spookyIcon3.animation.curAnim.curFrame = (game.healthBar.percent < 20) ? 1 : 0;
	spookyIcon3.scale.set(game.iconP1.scale.x - 0.2, game.iconP1.scale.y - 0.2);
	spookyIcon3.updateHitbox();

	spookyIcon4.x = game.healthBar.barCenter + (150 * spookyIcon.scale.x - 150) / 2 - iconOffset + 65;
	spookyIcon4.animation.curAnim.curFrame = (game.healthBar.percent < 20) ? 1 : 0;
	spookyIcon4.scale.set(game.iconP1.scale.x - 0.2, game.iconP1.scale.y - 0.2);
	spookyIcon4.updateHitbox();

	spookyIcon5.x = game.healthBar.barCenter + (150 * spookyIcon.scale.x - 150) / 2 - iconOffset + 65;
	spookyIcon5.animation.curAnim.curFrame = (game.healthBar.percent < 20) ? 1 : 0;
	spookyIcon5.scale.set(game.iconP1.scale.x - 0.2, game.iconP1.scale.y - 0.2);
	spookyIcon5.updateHitbox();

	spookyIcon6.x = game.healthBar.barCenter + (150 * spookyIcon.scale.x - 150) / 2 - iconOffset + 65;
	spookyIcon6.animation.curAnim.curFrame = (game.healthBar.percent < 20) ? 1 : 0;
	spookyIcon6.scale.set(game.iconP1.scale.x - 0.2, game.iconP1.scale.y - 0.2);
	spookyIcon6.updateHitbox();

	momIcon.x = game.healthBar.barCenter + (150 * momIcon.scale.x - 150) / 2 - iconOffset + 65;
	momIcon.animation.curAnim.curFrame = (game.healthBar.percent < 20) ? 1 : 0;
	momIcon.scale.set(game.iconP1.scale.x - 0.2, game.iconP1.scale.y - 0.2);
	momIcon.updateHitbox();
}