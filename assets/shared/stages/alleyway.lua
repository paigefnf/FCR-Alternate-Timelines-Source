function onCreate()

makeLuaSprite('sky','stage_assets/alley/alleySky',-350,-600)
setScrollFactor('sky',0.7,0.7)
addLuaSprite('sky', false)

makeLuaSprite('sky2','stage_assets/alley/alleySky2',-350,-100)
setScrollFactor('sky2',0.7,0.7)
setProperty('sky2.alpha',0)
addLuaSprite('sky2', false)

makeLuaSprite('mansion','stage_assets/alley/alleyFront',-830,-250)
addLuaSprite('mansion', false)

makeLuaSprite('lay', 'stage_assets/alley/overlay', 0, 0)
setObjectCamera('lay','hud')
addLuaSprite('lay', false)

makeLuaSprite('lay2', 'stage_assets/alley/overlay', 0, 0)
setObjectCamera('lay2','other')
addLuaSprite('lay2', false)
setProperty('lay2.alpha',0)
end
function onUpdate()
if songName == 'Fatigue' then
setProperty('camGame.alpha',1)
end
if songName == 'Outrank' then
setProperty('camGame.alpha',1)
end
if songName == 'Facing The Downfall' then
if curStep == 0 then
setProperty('camGame.alpha',0)
end
if curStep == 1 then
setProperty('camGame.alpha',1)
end
end
end