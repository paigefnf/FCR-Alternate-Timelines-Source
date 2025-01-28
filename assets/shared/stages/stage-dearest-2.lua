function onCreate()

makeLuaSprite('stageback', 'stage_assets/father2/stageback', -600, -400);
setScrollFactor('stageback', 0.9, 0.9);

makeLuaSprite('stagefront', 'stage_assets/father2/stagefront', -800, 600);
scaleObject('stagefront', 1.1, 1.1);

makeLuaSprite('stagecurtains', 'stage_assets/father2/stagecurtains', -650, -200);

addLuaSprite('stageback', false);
addLuaSprite('stagefront', false);

addLuaSprite('stagecurtains', true);

makeLuaSprite('shadow','shadowOverlay',0,0)
setObjectCamera('shadow','hud')
addLuaSprite('shadow')

makeLuaSprite('lay','overlay',0,0)
setObjectCamera('lay','hud')
setProperty('lay.visible',false)
addLuaSprite('lay')

makeLuaSprite('black','',-1000,-1000)
makeGraphic('black',3000,3000,'000000')
setProperty('black.alpha',0)
addLuaSprite('black',true)

end
function onCreatePost()
    if songName == 'Despondency' then
setProperty('camGame.alpha',0)
end
end
drain = false
function opponentNoteHit()
if getProperty('health') > 0.1 then
    if songName == 'Despondency' and drain then
    setProperty('health',getProperty('health') - 0.02)
    elseif songName == 'Resurgence' then
    setProperty('health',getProperty('health') - 0.02)
    end
end
end
function onUpdate()
if songName == 'Resurgence' then
if curStep <= 0 then
setProperty('gf.alpha',0)
end
end
end
function onStepHit()
if songName == 'Despondency' then
if curStep == 72 then
doTweenAlpha('camGame','camGame',1,5.4,'')
end
if curStep == 256 then
setProperty('lay.visible',true)
setProperty('shadow.visible',false)
end
if curStep == 512 then
drain = true
end
if curStep == 768 then
drain = false
end
if curStep == 896 then
setProperty('shadow.visible',true)
setProperty('shadow.alpha',0)
doTweenAlpha('lay','lay',0,4,'')
doTweenAlpha('shadow','shadow',1,4,'')
end
if curStep == 1152 then
doTweenAlpha('camGame','camGame',0.5,1,'')
end
if curStep == 1168 then
setProperty('camGame.alpha',1)
setProperty('shadow.alpha',0)
setProperty('lay.alpha',1)
setProperty('lay.visible',true)
drain = true
end
if curStep == 1728 then
doTweenAlpha('iconP2','iconP2',0,0.5,'linear')
doTweenAlpha('iconP1','iconP1',0,0.5,'linear')
doTweenAlpha('healthBarBG','healthBarBG',0,0.5,'linear')
doTweenAlpha('healthBar','healthBar',0,0.5,'linear')
doTweenAlpha('scoreTxt','scoreTxt',0,0.5,'linear')
noteTweenAlpha('note0', 0, 0, 0.5, 'quartInOut')
noteTweenAlpha('note1', 1, 0, 0.5, 'quartInOut')
noteTweenAlpha('note2', 2, 0, 0.5, 'quartInOut')
noteTweenAlpha('note3', 3, 0, 0.5, 'quartInOut')
noteTweenAlpha('note4', 4, 0, 0.5, 'quartInOut')
noteTweenAlpha('note5', 5, 0, 0.5, 'quartInOut')
noteTweenAlpha('note6', 6, 0, 0.5, 'quartInOut')
noteTweenAlpha('note7', 7, 0, 0.5, 'quartInOut')
doTweenAlpha('timeBarBG','timeBarBG',0,0.5,'linear')
doTweenAlpha('timeBar','timeBar',0,0.5,'linear')
doTweenAlpha('timeTxt','timeTxt',0,0.5,'linear')
end
end
end