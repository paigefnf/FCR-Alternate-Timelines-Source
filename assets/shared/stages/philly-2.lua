local windowColor = 1
function onCreate()
		makeLuaSprite('sky','stage_assets/philly2/sky', -800, -1000);
		setLuaSpriteScrollFactor('sky', 0.1, 0.1);		
      		makeLuaSprite('fakeSky','stage_assets/philly2/moon', -800, 0);
		setLuaSpriteScrollFactor('fakeSky', 0.1, 0.1);		
		makeLuaSprite('city','stage_assets/philly2/city',  -600, -400);
		setLuaSpriteScrollFactor('city', 0.3, 0.3)	
		makeLuaSprite('city2','stage_assets/philly/fakeCity', -600, -400);
		setLuaSpriteScrollFactor('city2', 0.3, 0.3)	
		makeLuaSprite('window','stage_assets/philly/windows', -600, -400);
		setLuaSpriteScrollFactor('window', 0.3, 0.3)	
		makeLuaSprite('behindTrain','stage_assets/philly/behindTrain', -200, -50);
		makeLuaSprite('street','stage_assets/philly/street', -1000, 500);	
	     scaleObject('street', 1.2, 1.2);
	makeLuaSprite('overlayLights2', 'stage_assets/overlay', 0, 0);
    setObjectCamera('overlayLights2', 'hud');
	makeLuaSprite('overlayLights3', 'stage_assets/overlay', 0, 0);
    setObjectCamera('overlayLights3', 'other');
	setProperty('overlayLights3.alpha',0)
	makeLuaSprite('black', '', 0, 0);
    makeGraphic('black',1280,720,'000000')	
    setObjectCamera('black', 'other');
    makeLuaSprite('lightOverlay','stage_assets/philly2/lightOverlay', -1800, -200);
    makeLuaSprite('flash', '', 0, 0);
makeGraphic('flash',1280,720,'ffffff')
setProperty('flash.scale.x',999)
setProperty('flash.scale.y',999)
setProperty('flash.alpha',0);
    addLuaSprite('black', false);
    addLuaSprite('overlayLights2', false);
    addLuaSprite('overlayLights3',false);
	addLuaSprite('sky', false);
    addLuaSprite('fakeSky', false);    
    addLuaSprite('city', false);
	addLuaSprite('city2', false);
	setProperty('window.alpha',0);
	addLuaSprite('window', false);
	addLuaSprite('behindTrain', false);
 	addLuaSprite('street', false);    
    addLuaSprite('flash', false);
	addLuaSprite('lightOverlay', true);
setProperty('lightOverlay.alpha',0)
setProperty('window.visible',false)
setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-dead-pico');
end
function onBeatHit()
if curBeat % 4== 0 then
windowColor = windowColor + 1
setProperty('window.alpha',1)
doTweenAlpha('windowStart','window',0,1.7)
end
if curBeat % 4== 0 and windowColor == 1 then
doTweenColor('red','window','0xFF31A2FD',0.0000001)
end
if curBeat % 4== 0 and windowColor == 2 then
doTweenColor('yellow','window','0xFF31FD8C',0.000001)
end
if curBeat % 4== 0 and windowColor == 3 then
doTweenColor('purple','window','0xFFFB33F5',0.00000001)
end
if curBeat % 4== 0 and windowColor == 4 then
doTweenColor('orange','window','0xFFFD4531',0.00000001)
end
if curBeat % 4== 0 and windowColor == 5 then
doTweenColor('blue','window','0xFFFBA633',0.000000001)
end
if curBeat % 4== 0 and windowColor >= 5 then
windowColor = 0
end
end
function onUpdate()
if curStep <= 0 then
noteTweenAlpha('oppo0', 0, 0, 0.5, 'quartInOut')
noteTweenAlpha('oppo1', 1, 0, 0.5, 'quartInOut')
noteTweenAlpha('oppo2', 2, 0, 0.5, 'quartInOut')
noteTweenAlpha('oppo3', 3, 0, 0.5, 'quartInOut')
noteTweenAlpha('play0', 4, 0, 0.5, 'quartInOut')
noteTweenAlpha('play1', 5, 0, 0.5, 'quartInOut')
noteTweenAlpha('play2', 6, 0, 0.5, 'quartInOut')
noteTweenAlpha('play3', 7, 0, 0.5, 'quartInOut')
doTweenAlpha('iconP2','iconP2',0,0.5,'linear')
doTweenAlpha('iconP1','iconP1',0,0.5,'linear')
doTweenAlpha('healthBarBG','healthBarBG',0,0.5,'linear')
doTweenAlpha('healthBar','healthBar',0,0.5,'linear')
doTweenAlpha('healthBarc','healthBarc',0,0.5,'linear')
doTweenAlpha('timeBarBG','timeBarBG',0,0.5,'linear')
doTweenAlpha('timeBar','timeBar',0,0.5,'linear')
doTweenAlpha('timeTxt','timeTxt',0,0.5,'linear')
doTweenAlpha('scoreTxt','scoreTxt',0,0.5,'linear')
end
if curStep == 64 then
doTweenAlpha('uh','black',0,6,'linear')
end
if curStep == 120 then
noteTweenAlpha('oppo0', 0, 1, 0.5, 'quartInOut')
noteTweenAlpha('oppo1', 1, 1, 0.5, 'quartInOut')
noteTweenAlpha('oppo2', 2, 1, 0.5, 'quartInOut')
noteTweenAlpha('oppo3', 3, 1, 0.5, 'quartInOut')
noteTweenAlpha('play0', 4, 1, 0.5, 'quartInOut')
noteTweenAlpha('play1', 5, 1, 0.5, 'quartInOut')
noteTweenAlpha('play2', 6, 1, 0.5, 'quartInOut')
noteTweenAlpha('play3', 7, 1, 0.5, 'quartInOut')
doTweenAlpha('iconP2','iconP2',1,0.5,'linear')
doTweenAlpha('iconP1','iconP1',1,0.5,'linear')
doTweenAlpha('healthBarBG','healthBarBG',1,0.5,'linear')
doTweenAlpha('healthBar','healthBar',1,0.5,'linear')
doTweenAlpha('healthBarc','healthBarc',1,0.5,'linear')
doTweenAlpha('timeBarBG','timeBarBG',1,0.5,'linear')
doTweenAlpha('timeBar','timeBar',1,0.5,'linear')
doTweenAlpha('timeTxt','timeTxt',1,0.5,'linear')
doTweenAlpha('scoreTxt','scoreTxt',1,0.5,'linear')
end
if curStep == 640 then
setProperty('window.visible',true)
end
if curStep == 740 then
doTweenY('fake','fakeSky',-1000,15,'linear')
doTweenAlpha('lightOverlay','lightOverlay',0.2,15,'linear')
doTweenAlpha('city2','city2',0,15,'linear')
end
if curStep == 1152 then
makeLuaSprite('lightOverlay','philly2/lightOverlay', -1800, -500);
addLuaSprite('lightOverlay');
setObjectOrder('lightOverlay', 
getObjectOrder('gfGroup')-1)
setProperty('lightOverlay.alpha',0.3)
setProperty('flash.alpha', 1);
setProperty('dad.color',getColorFromHex('000000'))
setProperty('boyfriend.color',getColorFromHex('000000'))
setProperty('gf.color',getColorFromHex('000000'))
noteTweenAlpha('oppo0', 0, 0, 0.001, 'quartInOut')
noteTweenAlpha('oppo1', 1, 0, 0.001, 'quartInOut')
noteTweenAlpha('oppo2', 2, 0, 0.001, 'quartInOut')
noteTweenAlpha('oppo3', 3, 0, 0.001, 'quartInOut')
noteTweenAlpha('play0', 4, 0, 0.001, 'quartInOut')
noteTweenAlpha('play1', 5, 0, 0.001, 'quartInOut')
noteTweenAlpha('play2', 6, 0, 0.001, 'quartInOut')
noteTweenAlpha('play3', 7, 0, 0.001, 'quartInOut')
doTweenAlpha('iconP2','iconP2',0,0.001,'linear')
doTweenAlpha('iconP1','iconP1',0,0.001,'linear')
doTweenAlpha('healthBarBG','healthBarBG',0,0.001,'linear')
doTweenAlpha('healthBar','healthBar',0,0.001,'linear')
doTweenAlpha('healthBarc','healthBarc',0,0.001,'linear')
doTweenAlpha('timeBarBG','timeBarBG',0,0.001,'linear')
doTweenAlpha('timeBar','timeBar',0,0.001,'linear')
doTweenAlpha('timeTxt','timeTxt',0,0.001,'linear')
doTweenAlpha('scoreTxt','scoreTxt',0,0.001,'linear')
end
if curStep == 1200 then
noteTweenAlpha('oppo0', 0, 1, 1, 'quartInOut')
noteTweenAlpha('oppo1', 1, 1, 1, 'quartInOut')
noteTweenAlpha('oppo2', 2, 1, 1, 'quartInOut')
noteTweenAlpha('oppo3', 3, 1, 1, 'quartInOut')
noteTweenAlpha('play0', 4, 1, 1, 'quartInOut')
noteTweenAlpha('play1', 5, 1, 1, 'quartInOut')
noteTweenAlpha('play2', 6, 1, 1, 'quartInOut')
noteTweenAlpha('play3', 7, 1, 1, 'quartInOut')
doTweenAlpha('timeBar','timeBar',1,1,'linear')
doTweenAlpha('timeTxt','timeTxt',1,1,'linear')
end
if curStep == 1216 then
makeLuaSprite('lightOverlay','philly2/lightOverlay', -1800, -200);
addLuaSprite('lightOverlay', true);
doTweenAlpha('scoreTxt','scoreTxt',1,0.001,'linear')
doTweenAlpha('iconP2','iconP2',1,0.001,'linear')
doTweenAlpha('iconP1','iconP1',1,0.001,'linear')
doTweenAlpha('healthBarBG','healthBarBG',1,0.001,'linear')
doTweenAlpha('healthBar','healthBar',1,0.001,'linear')
doTweenAlpha('healthBarc','healthBarc',1,0.001,'linear')
doTweenAlpha('timeBarBG','timeBarBG',1,0.001,'linear')
setProperty('flash.alpha', 0);
setProperty('lightOverlay.alpha',0.3) 
setProperty('dad.color',getColorFromHex('ffffff'))
setProperty('boyfriend.color',getColorFromHex('ffffff'))
setProperty('gf.color',getColorFromHex('ffffff'))
end
if curStep == 1728 then
doTweenAlpha('overlay','overlayLights3',1,0.5,'linear')
end
if curStep == 1780 then
doTweenAlpha('bhgyygy','black',1,5)	
end
end