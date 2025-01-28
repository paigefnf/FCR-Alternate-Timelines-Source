function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stage_assets/fatherShadow/stagebackShadow', -600, -400);
	setScrollFactor('stageback', 0.9, 0.9);
	addLuaSprite('stageback', false);
    setProperty('stageback.alpha', 0.3)

	makeLuaSprite('stagefront', 'stage_assets/fatherShadow/stagefrontShadow', -600, 600);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);
	addLuaSprite('stagefront', false);
    setProperty('stagefront.alpha', 0.3)

	makeLuaSprite('stagecurtains', 'stage_assets/fatherShadow/stagecurtainsShadow', -400, -300);
	setScrollFactor('stagecurtains', 1.3, 1.3);
	scaleObject('stagecurtains', 0.9, 0.9);
	addLuaSprite('stagecurtains', false);
    setProperty('stagecurtains.alpha', 1)
	
    makeLuaSprite('stagebg', 'stage_assets/stagebackFCR', -600, -400);
    setScrollFactor('stagebg', 0.9, 0.9);
    addLuaSprite('stagebg', false)
    setProperty('stagebg.alpha', 0)

    makeLuaSprite('front', 'stage_assets/stagefrontFCR', -800, 600);
    setScrollFactor('front', 0.9, 0.9);
    scaleObject('front', 1.1, 1.1);
    addLuaSprite('front', false)
    setProperty('front.alpha', 0)

    makeLuaSprite('stagecurtain', 'stage_assets/stagecurtainsFCR', -500, -300);
    setScrollFactor('stagecurtain', 1.3, 1.3);
    scaleObject('stagecurtain', 0.9, 0.9);
    addLuaSprite('stagecurtain', false);
    setProperty('stagecurtain.alpha', 0);

    makeLuaSprite('black', '', 0, 0);
    makeGraphic('black',1280,720,'000000')	
    setObjectCamera('black', 'other');
    addLuaSprite('black')    

    
    makeLuaText('spirit1', 'An old... competitor', 1000, -150, 335)
    setObjectCamera('spirit1', 'other')
    setTextFont('spirit1', 'pixel-latin.ttf')
    setTextColor('spirit1', 'FE3762')
    setTextSize('spirit1', 50);
    addLuaText('spirit1', true)
    screenCenter('spirit1', 'x')
    screenCenter('spirit1', 'y')
    setProperty('spirit1.alpha', 0)
    
    makeLuaText('spirit2', 'Now, lets make a deal, Dearest', 1000, -150, 335)
    setObjectCamera('spirit2', 'other')
    setTextFont('spirit2', 'pixel-latin.ttf')
    setTextColor('spirit2', 'FE3762')
    setTextSize('spirit2', 50);
    addLuaText('spirit2', true)
    screenCenter('spirit2', 'x')
    screenCenter('spirit2', 'y')
    setProperty('spirit2.alpha', 0)
    
    makeLuaText('spirit3', 'I am trying to help.', 1000, -150, 335)
    setObjectCamera('spirit3', 'other')
    setTextFont('spirit3', 'pixel-latin.ttf')
    setTextColor('spirit3', 'FE3762')
    setTextSize('spirit3', 50);
    addLuaText('spirit3', true)
    screenCenter('spirit3', 'x')
    screenCenter('spirit3', 'y')
    setProperty('spirit3.alpha', 0)
    
    makeLuaText('spirit4', 'I will prove myself this time.', 1000, -150, 335)
    setObjectCamera('spirit4', 'other')
    setTextFont('spirit4', 'pixel-latin.ttf')
    setTextColor('spirit4', 'FE3762')
    setTextSize('spirit4', 50);
    addLuaText('spirit4', true)
    screenCenter('spirit4', 'x')
    screenCenter('spirit4', 'y')
    setProperty('spirit4.alpha', 0)
    
    makeLuaText('dad1', 'You are not that blue balled runt.', 1100, -150, 335)
    setObjectCamera('dad1', 'other')
    setTextFont('dad1', 'ebrima.ttf')
    setTextColor('dad1', '57007F')
    setTextSize('dad1', 50);
    addLuaText('dad1', true)
    screenCenter('dad1', 'x')
    screenCenter('dad1', 'y')
    setProperty('dad1.alpha', 0)

    makeLuaText('dad1-alt', 'Who the hell are yo-', 1250, 0, 380)
    setObjectCamera('dad1-alt', 'other')
    setTextFont('dad1-alt', 'ebrima.ttf')
    setTextColor('dad1-alt', '57007F')
    setTextSize('dad1-alt', 50);
    addLuaText('dad1-alt', true)
    setProperty('dad1-alt.alpha', 0)
    
    makeLuaText('dad2', '...Wait, no, impossible..!', 1000, -150, 335)
    setObjectCamera('dad2', 'other')
    setTextFont('dad2', 'ebrima.ttf')
    setTextColor('dad2', '57007F')
    setTextSize('dad2', 50);
    addLuaText('dad2', true)
    screenCenter('dad2', 'x')
    screenCenter('dad2', 'y')
    setProperty('dad2.alpha', 0)
    
    makeLuaSprite('reveal', 'overlay', 0, 0);
    addLuaSprite('reveal')
    setObjectCamera('reveal', 'hud')
    setProperty('reveal.alpha', 0.5)
    setProperty('gf.color',getColorFromHex('000000'))

    

end
function onEvent(tag, v1, v2)
	if v2 == 'dad-chances' then
	    setProperty('stagebg.alpha', 1);
	    setProperty('front.alpha', 1);
	    setProperty('stagecurtain.alpha', 1);
	    removeLuaSprite('stageback', false);
	    removeLuaSprite('stagefront', false);
	    removeLuaSprite('stagecurtains', false);
	    cameraFlash('camHUD','ffffff','1.1', true);
        setProperty('black.alpha', 0)
    end
end
function onStepHit()
    if curStep == 21 then
        doTweenAlpha('5', 'black', 0, 10, 'quadInOut');
    elseif curStep == 367 then
        doTweenAlpha('5', 'black', 1, 10, 'quadInOut');
    elseif curStep == 450 then
        doTweenAlpha('dadScene', 'dad1', 1, 3, 'quadInOut')
        doTweenAlpha('dadScene2', 'dad1-alt', 1, 3, 'quadInOut')
    elseif curStep == 475 then
        setProperty('dad1.alpha', 0)
        setProperty('dad1-alt.alpha', 0)
        setProperty('dad2.alpha', 1)
        setProperty('gf.visible',false)

    elseif curStep == 497 then
        doTweenAlpha('dadSceneout', 'dad2', 0, 3, 'quadInOut')
    elseif curStep == 512 then
        doTweenAlpha('spiritScene1', 'spirit1', 1, 3, 'quadInOut')
    elseif curStep == 529 then
        doTweenAlpha('spiritSceneOut', 'spirit1', 0, 3, 'quadInOut')
    elseif curStep == 545 then
        doTweenAlpha('spiritScene2', 'spirit2', 1, 3, 'quadInOut')
    elseif curStep == 559 then
        doTweenAlpha('spiritSceneOut2', 'spirit2', 0, 3, 'quadInOut')
        setProperty('reveal.alpha', 1)

    elseif curStep == 3008 then
        doTweenAlpha('5', 'black', 1, 3, 'quadInOut');
    elseif curStep == 3044 then
        doTweenAlpha('spiritScene3', 'spirit3', 1, 1.5, 'quadInOut')
    elseif curStep == 3059 then
        doTweenAlpha('spiritSceneOut3', 'spirit3', 0, 1.5, 'quadInOut')
    elseif curStep == 3068 then
        doTweenAlpha('spiritScene4', 'spirit4', 1, 1.5, 'quadInOut')
    elseif curStep == 3100 then
        doTweenAlpha('spiritSceneOut4', 'spirit4', 0, 1.5, 'quadInOut')
    elseif curStep == 3125 then
        doTweenAlpha('5', 'black', 0, 0.5, 'quadInOut');
    end
end

function onUpdate()
setProperty('timeBar.alpha',getProperty('timeTxt.alpha'))
end