function onCreate()
makeLuaSprite('sky','alley/alleySky',-200,-100)
setScrollFactor('sky',0.7,0.7)
addLuaSprite('sky', false)

makeLuaSprite('sky2','alley/alleySky2',-200,-100)
setScrollFactor('sky2',0.7,0.7)
setProperty('sky2.alpha',0)
addLuaSprite('sky2', false)

makeLuaSprite('mansion','alley/alleyFront',-350,-200)
addLuaSprite('mansion', false)

makeLuaSprite('lay', 'alley/overlay', 0, 0)
setObjectCamera('lay', 'hud');
addLuaSprite('lay', false)

makeLuaSprite('lay2', 'alley/overlay', 0, 0)
setObjectCamera('lay2', 'other');
addLuaSprite('lay2', false)
setProperty('lay2.alpha',0)

makeLuaSprite('black', '', 0, 0);
makeGraphic('black',1280,720,'000000')	
setObjectCamera('black', 'other');
addLuaSprite('black', false)
setProperty('black.alpha',0)
end
function opponentNoteHit()
if getProperty('health') > 0.04 then
setProperty('health',getProperty('health') - 0.02)
end
end
function onUpdate()
if songName == 'Fallback' then
if curStep <= 0 then
setProperty('noteGroup.visible',false)
setProperty('timeTxt.visible',false)
setProperty('timeBar.visible',false)
setProperty('timeBarBG.visible',false)
setProperty("bfIcon.alpha", 0.000001)
setProperty("picoIcon.alpha", 0.000001)
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
doTweenAlpha('scoreTxt','scoreTxt',0,0.01,'linear')
doTweenAlpha('timeBarBG','timeBarBG',0,0.01,'linear')
doTweenAlpha('timeBar','timeBar',0,0.01,'linear')
doTweenAlpha('timeTxt','timeTxt',0,0.01,'linear')
end
if curStep == 1 then
  noteTweenAlpha('oppo0', 0, 0,0.01, 'quartInOut')
  noteTweenAlpha('oppo1', 1, 0,0.01, 'quartInOut')
  noteTweenAlpha('oppo2', 2, 0,0.01, 'quartInOut')
  noteTweenAlpha('oppo3', 3, 0,0.01, 'quartInOut')
  noteTweenAlpha('play0', 4, 0,0.01, 'quartInOut')
  noteTweenAlpha('play1', 5, 0,0.01, 'quartInOut')
  noteTweenAlpha('play2', 6, 0,0.01, 'quartInOut')
  noteTweenAlpha('play3', 7, 0,0.01, 'quartInOut')
  doTweenAlpha('iconP2','iconP2',0,0.5,'linear')
  doTweenAlpha('iconP1','iconP1',0,0.5,'linear')
  doTweenAlpha('bfIcon','bfIcon',0,0.5,'linear')
  doTweenAlpha('picoIcon','picoIcon',0,0.5,'linear')
  doTweenAlpha('healthBarBG','healthBarBG',0,0.01,'linear')
  doTweenAlpha('healthBar','healthBar',0,0.01,'linear')
  doTweenAlpha('healthBarc','healthBarc',0,0.01,'linear')
  doTweenAlpha('scoreTxt','scoreTxt',0,0.01,'linear')
  doTweenAlpha('timeBarBG','timeBarBG',0,0.5,'linear')
  doTweenAlpha('timeBar','timeBar',0,0.5,'linear')
  doTweenAlpha('timeTxt','timeTxt',0,0.5,'linear')
end  
if curStep == 2 then
  noteTweenAlpha('oppo0', 0, 0,0.01, 'quartInOut')
  noteTweenAlpha('oppo1', 1, 0,0.01, 'quartInOut')
  noteTweenAlpha('oppo2', 2, 0,0.01, 'quartInOut')
  noteTweenAlpha('oppo3', 3, 0,0.01, 'quartInOut')
  noteTweenAlpha('play0', 4, 0,0.01, 'quartInOut')
  noteTweenAlpha('play1', 5, 0,0.01, 'quartInOut')
  noteTweenAlpha('play2', 6, 0,0.01, 'quartInOut')
  noteTweenAlpha('play3', 7, 0,0.01, 'quartInOut')
  doTweenAlpha('iconP2','iconP2',0,0.5,'linear')
  doTweenAlpha('iconP1','iconP1',0,0.5,'linear')
  doTweenAlpha('healthBarBG','healthBarBG',0,0.01,'linear')
  doTweenAlpha('healthBar','healthBar',0,0.01,'linear')
  doTweenAlpha('healthBarc','healthBarc',0,0.01,'linear')
  doTweenAlpha('scoreTxt','scoreTxt',0,0.01,'linear')
  doTweenAlpha('timeBarBG','timeBarBG',0,0.5,'linear')
  doTweenAlpha('timeBar','timeBar',0,0.5,'linear')
  doTweenAlpha('timeTxt','timeTxt',0,0.5,'linear')
end  
if curStep == 240 then
  setProperty('noteGroup.visible',true)
  setProperty('timeTxt.visible',true)
  setProperty('timeBar.visible',true)
  setProperty('timeBarBG.visible',true)
  setProperty('bfIcon.visible',true)
  setProperty('picoIcon.visible',true)
  noteTweenAlpha('oppo0', 0, 1,0.5, 'quartInOut')
  noteTweenAlpha('oppo1', 1, 1,0.5, 'quartInOut')
  noteTweenAlpha('oppo2', 2, 1,0.5, 'quartInOut')
  noteTweenAlpha('oppo3', 3, 1,0.5, 'quartInOut')
  noteTweenAlpha('play0', 4, 1,0.5, 'quartInOut')
  noteTweenAlpha('play1', 5, 1,0.5, 'quartInOut')
  noteTweenAlpha('play2', 6, 1,0.5, 'quartInOut')
  noteTweenAlpha('play3', 7, 1,0.5, 'quartInOut')
  doTweenAlpha('iconP2','iconP2',1,0.5,'linear')
  doTweenAlpha('iconP1','iconP1',1,0.5,'linear')
  doTweenAlpha('bfIcon','bfIcon',1,0.5,'linear')
  doTweenAlpha('picoIcon','picoIcon',1,0.5,'linear')
  doTweenAlpha('healthBarBG','healthBarBG',1,0.5,'linear')
  doTweenAlpha('healthBar','healthBar',1,0.5,'linear')
  doTweenAlpha('healthBarc','healthBarc',1,0.5,'linear')
  doTweenAlpha('scoreTxt','scoreTxt',1,0.5,'linear')
  doTweenAlpha('timeBarBG','timeBarBG',1,0.5,'linear')
  doTweenAlpha('timeBar','timeBar',1,0.5,'linear')
  doTweenAlpha('timeTxt','timeTxt',1,0.5,'linear')
end
if curStep == 1024 then
setProperty('black.alpha',1)
end
if curStep == 1120 then
doTweenAlpha('black','black',0,10,'linear')
end
if curStep == 2174 then
doTweenAlpha('lay2','lay2',1,1,'linear')
end
end
if songName == 'Equalizer' then
setProperty('gf.visible',false)
setProperty('sky2.alpha',1)
setProperty('sky.alpha',0)
end
end
