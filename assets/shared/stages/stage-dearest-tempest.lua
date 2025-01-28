function onCreate()
	
makeLuaSprite('stageback', 'stage_assets/fatherShadow/stagebackShadow', -300, -400);
setScrollFactor('stageback', 0.9, 0.9);
addLuaSprite('stageback', false);

makeAnimatedLuaSprite('spico','stage_assets/fatherTempest/tempestBG-pico',-500,-270)
addAnimationByPrefix('spico','idle','stageback glow',24,true)
setProperty('spico.visible',false)
addLuaSprite('spico')

makeAnimatedLuaSprite('spicospooky','stage_assets/fatherTempest/tempestBG-picoSpooky',-500,-270)
addAnimationByPrefix('spicospooky','idle','stageback glow',24,true)
setProperty('spicospooky.visible',false)
addLuaSprite('spicospooky')

makeAnimatedLuaSprite('smom','stage_assets/fatherTempest/tempestBG-playerGone',-500,-270)
addAnimationByPrefix('smom','idle','stageback glow',24,true)
setProperty('smom.visible',false)
addLuaSprite('smom')

makeAnimatedLuaSprite('sdying','stage_assets/fatherTempest/tempestBG-dying',-500,-270)
addAnimationByPrefix('sdying','idle','stageback glow',24,true)
setProperty('sdying.visible',false)
addLuaSprite('sdying')
	
makeAnimatedLuaSprite('sdying2','stage_assets/fatherTempest/tempestBG-dying2',-500,-270)
addAnimationByPrefix('sdying2','idle','stageback glow',24,true)
setProperty('sdying2.visible',false)
addLuaSprite('sdying2')

makeLuaSprite('stageback2', 'stage_assets/father2/stageback', -600, -400);
setScrollFactor('stageback2', 0.9, 0.9);
addLuaSprite('stageback2', false);
	
	makeLuaSprite('stagefront', 'stage_assets/fatherShadow/stagefrontShadow', -550, 600);
	scaleObject('stagefront', 1.1, 1.1);
	addLuaSprite('stagefront', false);

	makeLuaSprite('stagefront2', 'stage_assets/father/stagefrontEvil', -800, 600);
	scaleObject('stagefront2', 1.2, 1.2);
	addLuaSprite('stagefront2', false);

	makeLuaSprite('light','stage_assets/fatherShadow/stage_lightShadow',0,-100)
    makeLuaSprite('light2','stage_light',0,-100)
	makeLuaSprite('light3','stage_lightAlt',0,-100)
	
	makeLuaSprite('light-alt','stage_assets/fatherShadow/stage_lightShadow',1600,-100)
	makeLuaSprite('light2-alt','stage_assets/father/stage_light',1600,-100)
	makeLuaSprite('light3-alt','stage_assets/father/stage_lightAlt',1600,-100)
	setPropertyLuaSprite('light-alt', 'flipX', true);
	setPropertyLuaSprite('light2-alt', 'flipX', true);
	setPropertyLuaSprite('light3-alt', 'flipX', true);
	setProperty('light2.visible',false)
	setProperty('light3.visible',false)
	setProperty('light2-alt.visible',false)
	setProperty('light3-alt.visible',false)
	addLuaSprite('light',false)
	addLuaSprite('light2',false)
	addLuaSprite('light3',false)
	addLuaSprite('light-alt',false)
	addLuaSprite('light2-alt',false)
	addLuaSprite('light3-alt',false)

    makeLuaSprite('reveal', 'overlay', 0, 0);
    addLuaSprite('reveal')
    setObjectCamera('reveal', 'hud')
	makeLuaSprite('reveal2', 'overlay', 0, 0);
    addLuaSprite('reveal2')
    setObjectCamera('reveal2', 'other')
	setProperty('reveal2.alpha',0)
	setProperty('stagefront2.alpha',0)
	setProperty('stageback2.alpha',0)
end
function onCreatePost()
makeLuaSprite('tempestLights', 'stage_assets/fatherTempest/tempestLights', -350, -250);
addLuaSprite('tempestLights', true);
setProperty('tempestLights.alpha',0)
makeLuaSprite('stagecurtains', 'stage_assets/fatherShadow/stagecurtainsShadow', -800, -450);
setScrollFactor('stagecurtains', 1.3, 1.3);
scaleObject('stagecurtains', 1.2, 1.2);
addLuaSprite('stagecurtains', true);
makeLuaSprite('stagecurtains2', 'stage_assets/father2/stagecurtains', -800, -450);
setScrollFactor('stagecurtains2', 1.3, 1.3);
scaleObject('stagecurtains2', 1.2, 1.2);
addLuaSprite('stagecurtains2', true);
setProperty('stagecurtains2.alpha',0)
makeAnimatedLuaSprite('tempestDudes','stage_assets/fatherTempest/tempestDudes',-350,750)
addAnimationByPrefix('tempestDudes','idle','fgCrowd',24,true)
scaleObject('tempestDudes', 2, 2);
addLuaSprite('tempestDudes',true)
setProperty('tempestDudes.alpha',0)
makeLuaSprite('black', '', 0, 0);
makeGraphic('black',1280,720,'000000')
setProperty('black.scale.x',999)
setProperty('black.scale.y',999)
addLuaSprite('black');
makeLuaSprite('flash', '', 0, 0);
makeGraphic('flash',1280,720,'ffffff')
setProperty('flash.scale.x',999)
setProperty('flash.scale.y',999)
addLuaSprite('flash', true);
setObjectOrder('flash',999)
setProperty('flash.alpha',0);
setProperty('black.alpha',0);
end
function onUpdate()
if curStep <= 0 then
setProperty('boyfriend.alpha',0)
setProperty('gf.alpha',0)
setProperty('iconP1.alpha',0)
setProperty('iconP2.alpha',0)
setProperty('healthBarBG.alpha',0)
setProperty('healthBar.alpha',0)
end
if curStep == 126 then
doTweenAlpha('gf','gf',1,0.3,'linear')
end
if curStep == 480 then
doTweenAlpha('flash','flash',1,1.5,'linear')
setProperty("defaultCamZoom",1.1)
doTweenZoom('p','camGame',1.1,1.5,'sineInOut')
end
if curStep == 512 then
setProperty("defaultCamZoom",0.68)
doTweenZoom('p','camGame',0.68,1,'sineInOut')
setProperty('light.visible',false)
setProperty('light2.visible',true)
setProperty('light-alt.visible',false)
setProperty('light2-alt.visible',true)
doTweenAlpha('flash','flash',0,1,'linear')
setProperty('boyfriend.alpha',1)
setProperty('iconP1.alpha',1)
setProperty('iconP2.alpha',1)
setProperty('healthBarBG.alpha',1)
setProperty('healthBar.alpha',1)
setProperty('stagecurtains2.alpha',1)
setProperty('stagefront2.alpha',1)
setProperty('stagecurtains.alpha',0)
setProperty('stagefront.alpha',0)
setProperty('spico.visible',true)
end
if curStep == 1280 then
setProperty("defaultCamZoom",0.8)
doTweenZoom('p','camGame',0.8,1,'sineInOut')
setProperty('flash.alpha',1);
doTweenAlpha('flash','flash',0,1,'linear')
setProperty('spico.visible',false)
setProperty('spicospooky.visible',true)
end
if curStep == 1792 then
setProperty("defaultCamZoom",0.68)
doTweenZoom('p','camGame',0.68,1,'sineInOut')
setProperty('flash.alpha',1);
doTweenAlpha('flash','flash',0,1,'linear')
end
if curStep == 2048 then
setProperty("defaultCamZoom",0.8)
doTweenZoom('p','camGame',0.8,1,'sineInOut')
setProperty('flash.alpha',1);
doTweenAlpha('flash','flash',0,1,'linear')
end
if curStep == 2176 then
setProperty("defaultCamZoom",0.68)
doTweenZoom('p','camGame',0.68,1,'sineInOut')
end
if curStep == 2272 then
doTweenAlpha('flash','flash',1,2,'linear')
setProperty("defaultCamZoom",1.2)
doTweenZoom('p','camGame',1.2,2,'sineInOut')
end
if curStep == 2304 then
setProperty("defaultCamZoom",0.68)
doTweenZoom('p','camGame',0.68,0.01,'sineInOut')
doTweenAlpha('flash','flash',0,1,'linear')
setProperty('spicospooky.visible',false)
setProperty('smom.visible',true)
end
if curStep == 2816 then
setProperty("defaultCamZoom",0.9)
doTweenZoom('p','camGame',0.9,1,'sineInOut')
doTweenAlpha('black','black',2,1,'linear')
doTweenAlpha('black2','stagecurtains2',0,1,'linear')
doTweenAlpha('boyfriend','boyfriend',0,1,'linear')
doTweenAlpha('dad','dad',0,1,'linear')
doTweenAlpha('j','camHUD',0,1,'linear')
end
if curStep == 2944 then
doTweenAlpha('dad','dad',1,0.3,'linear')
end
if curStep == 3056 then
doTweenAlpha('flash','flash',1,1,'linear')
setProperty("defaultCamZoom",1.2)
doTweenZoom('p','camGame',1.2,1,'sineInOut')
doTweenAlpha('j','camHUD',1,1,'linear')
end
if curStep == 3072 then
setProperty("defaultCamZoom",0.68)
doTweenZoom('p','camGame',0.68,1,'sineInOut')
setProperty('smom.visible',false)
setProperty('sdying.visible',true)
setProperty('boyfriend.alpha',1)
setProperty('black.alpha',0)
setProperty('stagecurtains2.alpha',1)
doTweenAlpha('flash','flash',0,1,'linear')
end
if curStep == 3200 then
setProperty('flash.alpha',1);
doTweenAlpha('flash','flash',0,1,'linear')
end
if curStep == 3552 then
setProperty("defaultCamZoom",0.1)
doTweenZoom('p','camGame',1,1.5,'sineInOut')
doTweenAlpha('flash','flash',1,2,'linear')
end
if curStep == 3584 then
setProperty("defaultCamZoom",0.68)
doTweenZoom('p','camGame',0.68,0.01,'sineInOut')
doTweenAlpha('flash','flash',0,1.5,'linear')
setProperty('tempestDudes.alpha',1)
setProperty('sdying.visible',false)
setProperty('sdying2.visible',true)
setProperty('light2.visible',false)
setProperty('light3.visible',true)
setProperty('light2-alt.visible',false)
setProperty('light3-alt.visible',true)
setProperty('tempestLights.alpha',1)
end
if curStep == 3675 then
doTweenAlpha('flash','flash',1,1,'linear')
end
if curStep == 3696 then
doTweenAlpha('flash','flash',0,1,'linear')
end
if curStep == 3840 then
setProperty('flash.alpha',1);
doTweenAlpha('flash','flash',0,1,'linear')
end
if curStep == 3948 then
doTweenAlpha('flash','flash',1,1,'linear')
end
if curStep == 3968 then
setProperty('stageback.alpha',0)
setProperty('stageback2.alpha',1)
doTweenAlpha('flash','flash',0,1,'linear')
end
if curStep == 4208 then
doTweenAlpha('flash','flash',1,1,'linear')
end
if curStep == 4224 then
doTweenAlpha('flash','flash',0,1,'linear')
end
if curStep == 4352 then
setProperty('flash.alpha',1);
doTweenAlpha('flash','flash',0,1,'linear')
end
if curStep == 4384 then
setProperty('flash.alpha',1);
doTweenAlpha('flash','flash',0,1,'linear')
end
if curStep == 4416 then
setProperty('flash.alpha',1);
doTweenAlpha('flash','flash',0,1,'linear')
end
if curStep == 4480 then
cameraFlash('camOther','ffffff', 1, true)
doTweenAlpha('rel','reveal2',1,1,'linear')
setProperty('camHUD.alpha',0)
end
end
