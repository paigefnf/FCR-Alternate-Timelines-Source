function onCreate()
   makeLuaSprite('bg','stage_assets/philly/sky', -800, -1000);
   setLuaSpriteScrollFactor('bg', 0.1, 0.1);		
   makeLuaSprite('fakeSky','stage_assets/philly/fakeSky', -100, 00);
   setLuaSpriteScrollFactor('fakeSky', 0.1, 0.1);		
   setLuaSpriteScrollFactor('fakeSky', 0.1, 0.1);				
   makeLuaSprite('city','stage_assets/philly/city', -600, -400);
   setLuaSpriteScrollFactor('city', 0.3, 0.3)	
   makeLuaSprite('streetBehind','stage_assets/philly/behindTrain', -200, -50);
    makeLuaSprite('phillyStreet','stage_assets/philly/street', -650, 550);	
    makeLuaSprite('overlayLights', 'stage_assets/overlay', 0, 0);
    setObjectCamera('overlayLights', 'hud');
   
   makeLuaSprite('fakeOverlay', 'stage_assets/philly/fakeOverlay', 0, 0);
    setObjectCamera('fakeOverlay', 'hud');
   
    makeLuaSprite('black', '', 0, 0);
    makeGraphic('black',1280,720,'000000')	
    setObjectCamera('black', 'other');
    makeLuaSprite('black2', '', 0, 0);
    makeGraphic('black2',1280,720, '000000')	
    setProperty('black2.scale.x',99)
   setProperty('black2.scale.y',99)    
    makeLuaSprite('lightOverlay','stage_assets/philly/lightOverlay', -600, 0);
    scaleObject('lightOverlay', 0.5, 0.5)
    addLuaSprite('black', true);
    addLuaSprite('overlayLights', false);
    addLuaSprite('fakeOverlay', false);
    addLuaSprite('fakeSky', false);
    addLuaSprite('bg', false);
    addLuaSprite('city', false);
    addLuaSprite('streetBehind', false);
    addLuaSprite('phillyStreet', false);  
    addLuaSprite('lightOverlay', false);
    addLuaSprite('black2', true);
setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-dead-pico');
end
function onUpdate()
if curStep <= 0 then
doTweenAlpha('iconP2','iconP2',0,0.001,'linear')
doTweenAlpha('iconP1','iconP1',0,0.001,'linear')
doTweenAlpha('healthBarBG','healthBarBG',0,0.001,'linear')
doTweenAlpha('healthBar','healthBar',0,0.001,'linear')
doTweenAlpha('healthBarc','healthBarc',0,0.001,'linear')
doTweenAlpha('timeBarBG','timeBarBG',0,0.001,'linear')
doTweenAlpha('timeBar','timeBar',0,0.001,'linear')
doTweenAlpha('timeTxt','timeTxt',0,0.001,'linear')
doTweenAlpha('scoreTxt','scoreTxt',0,0.001,'linear')
setProperty('bg.alpha',0)
setProperty('fakeSky.alpha',0)
setProperty('city.alpha',0)
setProperty('black2.alpha',0)
setProperty('flash.alpha',0)
setProperty('lightOverlay.alpha',0)
end
if curStep == 20 then   
doTweenAlpha('flTw','black',0,8,'linear')
end
if curStep == 416 then
setProperty('dad.color',getColorFromHex('F6B297'))
setProperty('boyfriend.color',getColorFromHex('F6B297'))
setProperty('gf.color',getColorFromHex('F6B297'))
setProperty('phillyStreet.color',getColorFromHex('F6B297'))
setProperty('streetBehind.color',getColorFromHex('F6B297'))
setProperty('fakeSky.color',getColorFromHex('F6B297'))
setProperty('city.color',getColorFromHex('F6B297'))
setProperty('lightOverlay.alpha',0.1)
setProperty('streetBehind2.alpha',0.6)
setProperty('phillyStreet2.alpha',0.6)
setProperty('black3.alpha',0)
setProperty('bg.alpha',1)
setProperty('fakeSky.alpha',1)
setProperty('city.alpha',1)
setProperty('fakeOverlay.alpha',0)
doTweenAlpha('iconP2','iconP2',1,0.001,'linear')
doTweenAlpha('iconP1','iconP1',1,0.001,'linear')
doTweenAlpha('healthBarBG','healthBarBG',1,0.001,'linear')
doTweenAlpha('healthBar','healthBar',1,0.001,'linear')
doTweenAlpha('healthBarc','healthBarc',1,0.001,'linear')
doTweenAlpha('timeBarBG','timeBarBG',1,0.001,'linear')
doTweenAlpha('timeBar','timeBar',1,0.001,'linear')
doTweenAlpha('timeTxt','timeTxt',1,0.001,'linear')
doTweenAlpha('scoreTxt','scoreTxt',1,0.001,'linear')
end
if curStep == 928 then
doTweenAlpha('iconP2','iconP2',0,0.01,'linear')
doTweenAlpha('iconP1','iconP1',0,0.01,'linear')
doTweenAlpha('healthBarBG','healthBarBG',0,0.01,'linear')
doTweenAlpha('healthBar','healthBar',0,0.01,'linear')
doTweenAlpha('healthBarc','healthBarc',0,0.01,'linear')
doTweenAlpha('timeBarBG','timeBarBG',0,0.01,'linear')
doTweenAlpha('timeBar','timeBar',0,0.01,'linear')
doTweenAlpha('timeTxt','timeTxt',0,0.01,'linear')
doTweenAlpha('scoreTxt','scoreTxt',0,0.01,'linear')
doTweenAlpha('flTp','bg',0,4,'linear')
doTweenAlpha('flp','fakeSky',0,4,'linear')
doTweenAlpha('fp','city',0,4,'linear')
doTweenAlpha('flTw','fakeOverlay',1,4,'linear')
doTweenColor('lqk', 'streetBehind', 'ffffff', 4, 'linear');
doTweenColor('pbn', 'phillyStreet', 'ffffff', 4, 'linear');
doTweenColor('qj', 'dad', 'ffffff', 1, 'linear');
doTweenColor('lq', 'gf', 'ffffff', 1, 'linear');
doTweenColor('pq', 'boyfriend', 'ffffff', 1, 'linear');
end
if curStep == 1216 then
setProperty('lightOverlay.alpha',0.1)
setProperty('dad.color',getColorFromHex('F6B297'))
setProperty('boyfriend.color',getColorFromHex('F6B297'))
setProperty('gf.color',getColorFromHex('F6B297'))
setProperty('phillyStreet.color',getColorFromHex('F6B297'))
setProperty('streetBehind.color',getColorFromHex('F6B297'))
doTweenAlpha('iconP2','iconP2',1,0.001,'linear')
doTweenAlpha('iconP1','iconP1',1,0.001,'linear')
doTweenAlpha('healthBarBG','healthBarBG',1,0.001,'linear')
doTweenAlpha('healthBar','healthBar',1,0.001,'linear')
doTweenAlpha('healthBarc','healthBarc',1,0.01,'linear')
doTweenAlpha('timeBarBG','timeBarBG',1,0.001,'linear')
doTweenAlpha('timeBar','timeBar',1,0.001,'linear')
doTweenAlpha('timeTxt','timeTxt',1,0.001,'linear')
doTweenAlpha('scoreTxt','scoreTxt',1,0.001,'linear')
cameraFlash('camGame','ffffff', 0.3, true)
setProperty('black.alpha',0)
setProperty('bg.alpha',1)
setProperty('fakeSky.alpha',1)
setProperty('city.alpha',1)
setProperty('fakeOverlay.alpha',0)
end
if curStep == 1760 then
cameraFlash('camOther','ffffff', 3, true)
setProperty('camHUD.alpha',0)
setProperty('black2.alpha',1)
end
end
