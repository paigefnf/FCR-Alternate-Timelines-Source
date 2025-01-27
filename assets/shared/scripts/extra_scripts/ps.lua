startPsBarVisible = true
ps = 4
function onCreatePost()
makeAnimatedLuaSprite('psBar','mechanics/ps',1070,610)
addAnimationByPrefix('psBar','4','LIVE 4 MAIN',24,false)
addAnimationByPrefix('psBar','4 remove','LIVE 3 loose',24,false)
addAnimationByPrefix('psBar','3 remove','LIVE 2 LOSE',24,false)
addAnimationByPrefix('psBar','2 remove','LIVE 1 LOSE',24,false)
addLuaSprite('psBar')
scaleObject('psBar',0.6,0.6)
updateHitbox('psBar')
objectPlayAnimation('psBar','ps',true)
setObjectCamera('psBar','camHUD')
for i = 0,22 do
addAnimationByIndices('psBar','4 appear','LIVE 3 loose',21 - i,'',24,false)
end
for o = 0,21 do
addAnimationByIndices('psBar','3 appear','LIVE 2 LOSE',20 - o,'',24,false)
end
for z = 0,22 do
addAnimationByIndices('psBar','2 appear','LIVE 1 LOSE',21 - z,'',24,false)
end
runHaxeCode([[
import flixel.addons.effects.FlxTrail;
    psBarTrail2 = new FlxTrail(getLuaObject('psBar'), null, 4, 100, 0.5, 0.069);
    psBarTrail2.cameras = [game.camHUD];
game.modchartSprites.set("psBarTrail",psBarTrail2);
    psBarTrail2.color = 0xFFFF0000; psBarTrail.alpha = 0;
    psBarTrail2.visible = false;
add(psBarTrail2);
]])
end
fullTime = 0
function onUpdate(elapsed)
if ps > 2 then
return
end
fullTime = fullTime + elapsed
if ps == 1 then
setProperty('psBar.x',lerp(getProperty('psBar.x'),1070 + (6*math.sin(fullTime)),1/4 + math.random(0,0.5)))
setProperty('psBar.y',lerp(getProperty('psBar.y'),610 + (6*math.cos(fullTime)),1/4 + math.random(0,0.5)))
else
setProperty('psBar.x',lerp(getProperty('psBar.x'),1070 + (6*math.sin(fullTime)),1/4 + math.random(0,0.4)))
setProperty('psBar.y',lerp(getProperty('psBar.y'),610 + (6*math.cos(fullTime)),1/4 + math.random(0,0.4)))
end
setProperty('psBarTrail.alpha',lerp(getProperty('psBarTrail.alpha'),0.4,1/4))
end
function removePS(change)
pso = ps + 1
ps = ps - change
if ps >= 1 then
objectPlayAnimation('psBar',pso..' remove',true)
objectPlayAnimation('psBarTrail',pso..' remove',true)
else
setProperty('health',-9999)
end
end
function addPS(change)
if ps >= 4 then
return
end
ps = ps + change
objectPlayAnimation('psBar',pso..' appear',true)
end