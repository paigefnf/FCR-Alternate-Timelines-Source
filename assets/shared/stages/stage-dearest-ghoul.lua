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