function onCreate()
    makeLuaSprite('camFadeScript',nil)
    makeGraphic('camFadeScript',screenWidth*3,screenHeight*3,'FFFFFF')
    setScrollFactor('camFadeScript',0,0)
    setProperty('camFadeScript.alpha',0.001)
    addLuaSprite('camFadeScript',true)
end
function camFade(cam,color,fadeTime,fadeIn,easing)
    if cam == 'game' then
        cam = 'camGame'
    elseif cam == 'hud' then
        cam = 'camHUD'
    elseif cam == 'camOther' then
        cam = 'camOther'
    end
    if easing == nil then
        easing = 'sineOut'
    end
    
    removeLuaSprite('camFadeScript',false)
    setObjectCamera('camFadeScript',cam)
    setProperty('camFadeScript.x',math.min(0,-300 * (2 - getProperty(cam..'.zoom'))))
    setProperty('camFadeScript.y',math.min(0,-300 * (2 - getProperty(cam..'.zoom'))))
    setProperty('camFadeScript.color',getColorFromHex(color))
    if fadeIn then
        setProperty('camFadeScript.alpha',1)
        doTweenAlpha('camFadeAlpha','camFadeScript',0,fadeTime,easing)
    else
        setProperty('camFadeScript.alpha',0)
        doTweenAlpha('camFadeAlpha','camFadeScript',1,fadeTime,easing)
    end
    addLuaSprite('camFadeScript',true)
end