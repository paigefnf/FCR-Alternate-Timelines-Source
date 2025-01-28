function onCreate()
makeLuaSprite('bg','stage_assets/mall/evilSnow', -600, 700);
makeAnimatedLuaSprite('chudncompany', 'stage_assets/mall/chudncompany', 650, 150)
addAnimationByPrefix('chudncompany', 'nnn', 'Bottom Level Boppers', 24, true)
makeLuaSprite('evilTree','stage_assets/mall/evilTree', 400, 0);
setLuaSpriteScrollFactor('evilTree', 0.6, 0.6)
makeLuaSprite('bgescalators','stage_assets/mall/bgescalators', -1300, -700);
setLuaSpriteScrollFactor('bgescalators', 0.6, 0.6)
makeAnimatedLuaSprite('upperfellas', 'stage_assets/mall/upperfellas', -300, -20)
addAnimationByPrefix('upperfellas', 'nnn', 'Upper Crowd Bob', 24, true)
setLuaSpriteScrollFactor('upperfellas', 0.6, 0.6)
scaleObject('upperfellas', 0.9, 0.9);
makeLuaSprite('evilBG','stage_assets/mall/evilBG', -1100, -600);
setLuaSpriteScrollFactor('evilBG', 0.6, 0.6)
scaleObject('evilBG', 0.9, 0.9);
makeLuaSprite('oey', 'stage_assets/mall/overlay', 0, 0);
setObjectCamera('oey', 'hud');
addLuaSprite('oey');
addLuaSprite('evilBG', false);
addLuaSprite('upperfellas', false);
addLuaSprite('bgescalators', false);
addLuaSprite('evilTree', false);
addLuaSprite('chudncompany', false);
addLuaSprite('bg', false);
makeLuaSprite('black', '', 0, 0);
makeGraphic('black',1280,720,'000000')	
setObjectCamera('black', 'other');
addLuaSprite('black', false)
end
function onUpdate()
if curStep == 40 then
doTweenAlpha('black','black',0,15,'linear')
end
if curStep == 672 then
setProperty("defaultCamZoom",1.2)
doTweenZoom('p','camGame',1.2,1,'sineInOut')
doTweenAlpha('black','black',1,1,'linear')
end
if curStep == 703 then
setProperty("defaultCamZoom",0.75)
doTweenZoom('p','camGame',0.75,0.01,'sineInOut')
setProperty('black.alpha',0)
cameraFlash('camOther','ffffff', 1.5, true)
end
if curStep == 2400 then
doTweenAlpha('black','black',1,0.001,'linear')
end
end