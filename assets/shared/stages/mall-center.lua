function onCreate()
makeLuaSprite('back','back',-720,-300)
makeLuaSprite('back2','back-dark',-720,-300)
addLuaSprite('back2', false)
addLuaSprite('back', false)
makeLuaSprite('floor','floor',-600,100)
makeLuaSprite('floor2','floor-dark',-600,100)
addLuaSprite('floor2', false)
addLuaSprite('floor', false)
makeLuaSprite('flash', '', 0, 0);
makeGraphic('flash',1280,720,'ffffff')
setProperty('flash.scale.x',999)
setProperty('flash.scale.y',999)
addLuaSprite('flash', false)
makeLuaSprite('overlay', 'overlay', 0, 0);
setObjectCamera('overlay', 'hud');
addLuaSprite('overlay', false)
makeAnimatedLuaSprite('staticBG', 'staticBG', 0, -20)
addAnimationByPrefix('staticBG', 'idle', 'staticshitstuff', 24, true)
setObjectCamera('staticBG', 'hud');
scaleObject('staticBG', 2, 2);
addLuaSprite('staticBG', false)
makeLuaSprite('black', '', 0, 0);
makeGraphic('black',1280,720,'000000')	
setObjectCamera('black', 'other');
addLuaSprite('black', false)
setProperty('black.alpha',0)
end
function onUpdate()
    if curStep <= 0 then
    setProperty('gf.alpha',0)
    setProperty('staticBG.alpha',0)
    setProperty('flash.alpha',0)
    setProperty('back.alpha',0)
    setProperty('floor.alpha',0)
    end
    if curStep == 81 then
    doTweenAlpha('overlay','overlay',0.4,0.5,'linear')
    doTweenAlpha('back','back',1,1,'linear')
    doTweenAlpha('floor','floor',1,1,'linear')
    end
    if curStep == 657 then
    doTweenAlpha('overlay','overlay',1,1,'linear')
    doTweenAlpha('back','back',0,1,'linear')
    doTweenAlpha('floor','floor',0,1,'linear')
    end
    if curStep == 784 then
    setProperty('overlay.alpha',0.4)
    setProperty('back.alpha',1)
    setProperty('floor.alpha',1)
    end
    if curStep == 914 then
    doTweenAlpha('black','black',1,2,'linear')
    end
    if curStep == 970 then
    doTweenAlpha('overlay','overlay',0.6,0.01,'linear')
    setProperty('dad.alpha',0)
    setProperty('staticBG.alpha',0.6)
    setProperty('flash.alpha',1)
    noteTweenAlpha('oppo0', 0, 0, 0.01, 'quartInOut')
    noteTweenAlpha('oppo1', 1, 0, 0.01, 'quartInOut')
    noteTweenAlpha('oppo2', 2, 0, 0.01, 'quartInOut')
    noteTweenAlpha('oppo3', 3, 0, 0.01, 'quartInOut')
    triggerEvent('Camera Follow Pos','900', '550')
    doTweenAlpha('iconP2','iconP2',0,0.001,'linear')
    end
    if curStep == 974 then
    doTweenAlpha('black','black',0,2,'linear')
    end
    if curStep == 1425 then
    doTweenAlpha('overlay','overlay',1,2,'linear')
    doTweenAlpha('staticBG','staticBG',0.7,2,'linear')
    end
    if curStep == 1520 then
    doTweenAlpha('black','black',1,0.25,'linear')
    end
    if curStep == 1530 then
    triggerEvent('Camera Follow Pos','', '')
    end
    if curStep == 1536 then
    cameraFlash('camOther','ffffff', 1, true)
    doTweenAlpha('iconP2','iconP2',1,0.001,'linear')
    setProperty('dad.alpha',1)
    setProperty('black.alpha',0)
    doTweenAlpha('overlay','overlay',0.6,0.01,'linear')
    noteTweenAlpha('oppo0', 0, 1, 0.001, 'quartInOut')
    noteTweenAlpha('oppo1', 1, 1, 0.001, 'quartInOut')
    noteTweenAlpha('oppo2', 2, 1, 0.001, 'quartInOut')
    noteTweenAlpha('oppo3', 3, 1, 0.001, 'quartInOut')
    doTweenAlpha('staticBG','staticBG',0.2,0.01,'linear')
    end
    end