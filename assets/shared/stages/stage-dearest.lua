function onCreate()
makeLuaSprite('stageback', 'stage_assets/father/stagebackFCR', -600, -400);
setScrollFactor('stageback', 0.9, 0.9);

makeLuaSprite('stagefront', 'stage_assets/father/stagefrontFCR', -800, 600);
scaleObject('stagefront', 1.1, 1.1);

makeLuaSprite('light','stage_assets/father/stage_lightFCR',-50,-50)

makeLuaSprite('light2','stage_assets/father/stage_lightAlt',-50,-50)

makeLuaSprite('light-alt','stage_assets/father/stage_lightFCR',1650,-50)

makeLuaSprite('light2-alt','stage_assets/father/stage_lightAlt',1650,-50)
setPropertyLuaSprite('light-alt', 'flipX', true);
setPropertyLuaSprite('light2-alt', 'flipX', true);
setProperty('light2.visible',false)
setProperty('light2-alt.visible',false)


makeLuaSprite('stagecurtains', 'stage_assets/father/stagecurtainsFCR', -650, -300);

addLuaSprite('stageback', false);
addLuaSprite('stagefront', false);

makeLuaSprite('stagefront2', 'stage_assets/father/stagefrontAlt', -800, 600);
scaleObject('stagefront2', 1.1, 1.1);
setProperty('stagefront2.visible',false)
addLuaSprite('stagefront2', false);

makeLuaSprite('lights','stage_assets/father/lights',-700,-300)
scaleObject('lights', 1.1, 1.1);
setProperty('lights.alpha',0)
addLuaSprite('light',true)
addLuaSprite('light2',true)
addLuaSprite('light-alt',true)
addLuaSprite('light2-alt',true)
addLuaSprite('lights',true)

addLuaSprite('stagecurtains', true);

makeLuaSprite('shadow','shadowOverlay',0,0)
setObjectCamera('shadow','hud')
addLuaSprite('shadow',false)

makeLuaSprite('lay','overlay',0,0)
setObjectCamera('lay','hud')
setProperty('lay.visible',false)
addLuaSprite('lay')

makeLuaSprite('lay2','overlayLights',0,0)
setObjectCamera('lay2','hud')
setProperty('lay2.visible',false)
addLuaSprite('lay2')

makeLuaSprite('bfl','stage_assets/father/revealBF',-200,0)
scaleObject('bfl', 0.75, 0.75);
setObjectCamera('bfl','hud')
addLuaSprite('bfl',true)

makeLuaSprite('black', '', 0, 0);
makeGraphic('black',1280,720,'000000')	
setObjectCamera('black', 'other');
addLuaSprite('black',true)    
setProperty('black.alpha',0)
end
drain = false
function opponentNoteHit()
if getProperty('health') > 0.1 and drain == true then
setProperty('health',getProperty('health') - 0.02)
end
end
function onEvent(name,v1,v2)
if name == 'Dad Stage Lights' then
if v1 == 'true' then
drain = true
setProperty('light2.visible',true)
setProperty('light.visible',false)
setProperty('light2-alt.visible',true)
setProperty('light-alt.visible',false)
setProperty('stagefront.visible',false)
setProperty('stagefront2.visible',true)
doTweenAlpha('lights','lights',1,v2)
setProperty('lay2.visible',true)
setProperty('lay.visible',false)
else
setProperty('light2.visible',false)
setProperty('light.visible',true)
setProperty('light2-alt.visible',false)
setProperty('light-alt.visible',true)
setProperty('lay.visible',true)
setProperty('lay2.visible',false)
setProperty('stagefront2.visible',false)
setProperty('stagefront.visible',true)
doTweenAlpha('lights','lights',0,v2)
drain = false
end
end
end
function onUpdate()
if songName == 'Sans-Song' then
setProperty('gf.visible',false)
setProperty('bfl.alpha',0)
else
if curStep <= 0 then
setProperty('noteGroup.visible',false)
setProperty('timeTxt.visible',false)
setProperty('timeBar.visible',false)
setProperty('timeBarBG.visible',false)
doTweenAlpha('hud','camHUD',0.75,0.01,'linear')
noteTweenAlpha('oppo0', 0, 0,0.5, 'quartInOut')
noteTweenAlpha('oppo1', 1, 0,0.5, 'quartInOut')
noteTweenAlpha('oppo2', 2, 0,0.5, 'quartInOut')
noteTweenAlpha('oppo3', 3, 0,0.5, 'quartInOut')
noteTweenAlpha('play0', 4, 0,0.5, 'quartInOut')
noteTweenAlpha('play1', 5, 0,0.5, 'quartInOut')
noteTweenAlpha('play2', 6, 0,0.5, 'quartInOut')
noteTweenAlpha('play3', 7, 0,0.5, 'quartInOut')
doTweenAlpha('iconP2','iconP2',0,0.001,'linear')
doTweenAlpha('iconP1','iconP1',0,0.001,'linear')
doTweenAlpha('healthBarBG','healthBarBG',0,0.001,'linear')
doTweenAlpha('healthBar','healthBar',0,0.001,'linear')
doTweenAlpha('healthBarc','healthBarc',0,0.001,'linear')
doTweenAlpha('scoreTxt','scoreTxt',0,0.001,'linear')
setProperty('timeBarBG.visible',false)
setProperty('timeBar.visible',false)
setProperty('timeTxt.visible',false)
end
if curStep == 1 then
noteTweenAlpha('oppo0', 0, 0,0.5, 'quartInOut')
noteTweenAlpha('oppo1', 1, 0,0.5, 'quartInOut')
noteTweenAlpha('oppo2', 2, 0,0.5, 'quartInOut')
noteTweenAlpha('oppo3', 3, 0,0.5, 'quartInOut')
noteTweenAlpha('play0', 4, 0,0.5, 'quartInOut')
noteTweenAlpha('play1', 5, 0,0.5, 'quartInOut')
noteTweenAlpha('play2', 6, 0,0.5, 'quartInOut')
noteTweenAlpha('play3', 7, 0,0.5, 'quartInOut')
doTweenAlpha('timeBG','timeBarBG',0,0.5,'linear')
doTweenAlpha('time','timeBar',0,0.5,'linear')
doTweenAlpha('Txt','timeTxt',0,0.5,'linear')
end
if curStep == 48 then
setProperty('noteGroup.visible',true)
setProperty('timeTxt.visible',true)
setProperty('timeBar.visible',true)
setProperty('timeBarBG.visible',true)
noteTweenAlpha('oppo0', 0, 1, 1, 'quartInOut')
noteTweenAlpha('oppo1', 1, 1, 1, 'quartInOut')
noteTweenAlpha('oppo2', 2, 1, 1, 'quartInOut')
noteTweenAlpha('oppo3', 3, 1, 1, 'quartInOut')
noteTweenAlpha('play0', 4, 1, 1, 'quartInOut')
noteTweenAlpha('play1', 5, 1, 1, 'quartInOut')
noteTweenAlpha('play2', 6, 1, 1, 'quartInOut')
noteTweenAlpha('play3', 7, 1, 1, 'quartInOut')
doTweenAlpha('iconP2','iconP2', 1, 1,'linear')
doTweenAlpha('iconP1','iconP1', 1, 1,'linear')
doTweenAlpha('healthBarBG','healthBarBG', 1, 1,'linear')
doTweenAlpha('healthBar','healthBar', 1, 1,'linear')
doTweenAlpha('healthBarc','healthBarc', 1, 1,'linear')
doTweenAlpha('timeBarBG','timeBarBG', 1, 1,'linear')
doTweenAlpha('timeBar','timeBar', 1, 1,'linear')
doTweenAlpha('timeTxt','timeTxt', 1, 1,'linear')
end
if curStep == 128 then
setProperty('lay.visible',true)
doTweenAlpha('hud','camHUD',1,0.01,'linear')
noteTweenAlpha('oppo0', 0, 0,0.01, 'quartInOut')
noteTweenAlpha('oppo1', 1, 0,0.01, 'quartInOut')
noteTweenAlpha('oppo2', 2, 0,0.01, 'quartInOut')
noteTweenAlpha('oppo3', 3, 0,0.01, 'quartInOut')
noteTweenAlpha('play0', 4, 0,0.01, 'quartInOut')
noteTweenAlpha('play1', 5, 0,0.01, 'quartInOut')
noteTweenAlpha('play2', 6, 0,0.01, 'quartInOut')
noteTweenAlpha('play3', 7, 0,0.01, 'quartInOut')
doTweenAlpha('iconP2','iconP2',0,0.01,'linear')
doTweenAlpha('iconP1','iconP1',0,0.01,'linear')
doTweenAlpha('healthBarBG','healthBarBG',0,0.01,'linear')
doTweenAlpha('healthBar','healthBar',0,0.01,'linear')
doTweenAlpha('healthBarc','healthBarc',0,0.01,'linear')
doTweenAlpha('timeBarBG','timeBarBG',0,0.01,'linear')
doTweenAlpha('timeBar','timeBar',0,0.01,'linear')
doTweenAlpha('timeTxt','timeTxt',0,0.01,'linear')
doTweenAlpha('scoreTxt','scoreTxt',0,0.01,'linear')
setProperty('bfl.alpha',0)
setProperty('shadow.alpha',0)
end
if curStep == 248 then
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
if curStep == 1424 then
noteTweenAlpha('oppo0', 0, 0,0.01, 'quartInOut')
noteTweenAlpha('oppo1', 1, 0,0.01, 'quartInOut')
noteTweenAlpha('oppo2', 2, 0,0.01, 'quartInOut')
noteTweenAlpha('oppo3', 3, 0,0.01, 'quartInOut')
noteTweenAlpha('play0', 4, 0,0.01, 'quartInOut')
noteTweenAlpha('play1', 5, 0,0.01, 'quartInOut')
noteTweenAlpha('play2', 6, 0,0.01, 'quartInOut')
noteTweenAlpha('play3', 7, 0,0.01, 'quartInOut')
doTweenAlpha('iconP2','iconP2',0,0.01,'linear')
doTweenAlpha('iconP1','iconP1',0,0.01,'linear')
doTweenAlpha('healthBarBG','healthBarBG',0,0.01,'linear')
doTweenAlpha('healthBar','healthBar',0,0.01,'linear')
doTweenAlpha('healthBarc','healthBarc',0,0.01,'linear')
doTweenAlpha('timeBarBG','timeBarBG',0,0.01,'linear')
doTweenAlpha('timeBar','timeBar',0,0.01,'linear')
doTweenAlpha('timeTxt','timeTxt',0,0.01,'linear')
doTweenAlpha('scoreTxt','scoreTxt',0,0.01,'linear')
end
if curStep == 1440 then
doTweenAlpha('black','black',1,3,'')
end
if curStep == 1480 then
setProperty('lay.visible',false)
setProperty('bfl.alpha',0.5)
setProperty('shadow.alpha',1)
doTweenAlpha('black','black',0,1,'')
noteTweenAlpha('oppo0', 0, 0.75, 1, 'quartInOut')
noteTweenAlpha('oppo1', 1, 0.75, 1, 'quartInOut')
noteTweenAlpha('oppo2', 2, 0.75, 1, 'quartInOut')
noteTweenAlpha('oppo3', 3, 0.75, 1, 'quartInOut')
noteTweenAlpha('play0', 4, 0.75, 1, 'quartInOut')
noteTweenAlpha('play1', 5, 0.75, 1, 'quartInOut')
noteTweenAlpha('play2', 6, 0.75, 1, 'quartInOut')
noteTweenAlpha('play3', 7, 0.75, 1, 'quartInOut')
doTweenAlpha('iconP2','iconP2', 0.75, 1,'linear')
doTweenAlpha('iconP1','iconP1', 0.75, 1,'linear')
doTweenAlpha('healthBarBG','healthBarBG', 0.75, 1,'linear')
doTweenAlpha('healthBar','healthBar', 0.75, 1,'linear')
doTweenAlpha('healthBarc','healthBarc', 0.75, 1,'linear')
doTweenAlpha('timeBarBG','timeBarBG', 0.75, 1,'linear')
doTweenAlpha('timeBar','timeBar', 0.75, 1,'linear')
doTweenAlpha('timeTxt','timeTxt', 0.75, 1,'linear')
doTweenAlpha('scoreTxt','scoreTxt', 0.75, 1,'linear')
end
if curStep == 1607 then
doTweenAlpha('black','black',1,1,'')
end
end
end