function onCreate()

makeLuaSprite('stageback', 'stage_assets/father2/stageback', -600, -300);
setScrollFactor('stageback', 0.9, 0.9);
addLuaSprite('stageback', false);

makeAnimatedLuaSprite('stagebackbf','stage_assets/father3/stagebackAltBf',-550,-270)
addAnimationByPrefix('stagebackbf','idle','stageback glow',24,true)
setProperty('stagebackbf.visible',false)
addLuaSprite('stagebackbf')

makeAnimatedLuaSprite('stagebackpico','stage_assets/father3/stagebackAltPico',-550,-270)
addAnimationByPrefix('stagebackpico','idle','stageback glow',24,true)
setProperty('stagebackpico.visible',false)
addLuaSprite('stagebackpico')

makeAnimatedLuaSprite('stagebackspooky','stage_assets/father3/stagebackAltSP',-550,-270)
addAnimationByPrefix('stagebackspooky','idle','stageback glow',24,true)
setProperty('stagebackspooky.visible',false)
addLuaSprite('stagebackspooky')

makeAnimatedLuaSprite('stagebackmom','stage_assets/father3/stagebackAltMom',-550,-270)
addAnimationByPrefix('stagebackmom','idle','stageback glow',24,true)
setProperty('stagebackmom.visible',false)
addLuaSprite('stagebackmom')

makeLuaSprite('stagefront', 'stage_assets/father2/stagefront', -800, 600);
scaleObject('stagefront', 1.1, 1.1);
addLuaSprite('stagefront', false);

makeLuaSprite('stagefront2', 'stage_assets/father/stagefrontAlt', -800, 600);
scaleObject('stagefront2', 1.1, 1.1);
setProperty('stagefront2.visible',false)
addLuaSprite('stagefront2', false);

makeLuaSprite('stagecurtains', 'stage_assets/father2/stagecurtains', -650, -300);
addLuaSprite('stagecurtains', true);

makeLuaSprite('flash', '', 0, 0);
makeGraphic('flash',1280,720,'ffffff')
setObjectCamera('flash','hud')
setProperty('flash.alpha',0);
addLuaSprite('flash');
makeLuaSprite('lay','overlayLights',0,0)
setObjectCamera('lay','hud')
addLuaSprite('lay')
setProperty('boyfriend.visible',false)
end
function opponentNoteHit()
if getProperty('health') > 0.1 and drain == true then
setProperty('health',getProperty('health') - 0.02)
end
end
function onUpdate()
if curStep <= 0 then
doTweenAlpha('iconP1','iconP1',0,0.01,'linear')
end
end
function onStepHit()
if curStep == 512 then
doTweenAlpha('flash','flash',1,0.75,'linear')
end
if curStep == 544 then
doTweenAlpha('iconP1','iconP1',1,0.01,'linear')
setProperty('boyfriend.visible',true)
doTweenAlpha('flash','flash',0,0.5,'linear')
setProperty('stageback.visible',false)
setProperty('stagebackbf.visible',true)
setProperty('stagefront.visible',false)
setProperty('stagefront2.visible',true)
end
if curStep == 1056 then
doTweenAlpha('flash','flash',1,0.75,'linear')
end
if curStep == 1087 then
doTweenAlpha('flash','flash',0,0.5,'linear')
setProperty('stagebackbf.visible',false)
setProperty('stagebackpico.visible',true)
end
if curStep == 1599 then
doTweenAlpha('flash','flash',1,0.75,'linear')
end
if curStep == 1632 then
doTweenAlpha('flash','flash',0,0.5,'linear')
setProperty('stagebackpico.visible',false)
setProperty('stagebackspooky.visible',true)
end
if curStep == 2416 then
doTweenAlpha('flash','flash',1,0.75,'linear')
end
if curStep == 2592 then
doTweenAlpha('flash','flash',0,0.5,'linear')
setProperty('stagebackspooky.visible',false)
setProperty('stagebackmom.visible',true)
end
if curStep == 3312 then
doTweenAlpha('flash','flash',1,10,'linear')
end
if curStep == 3520 then
doTweenAlpha('flash','flash',0,0.5,'linear')
setProperty('stagebackmom.visible',false)
setProperty('stagebackbf.visible',true)
end
if curStep == 4928 then
doTweenAlpha('flash','flash',1,1,'linear')
end
if curStep == 4960 then
doTweenAlpha('flash','flash',0,0.5,'linear')
end
end