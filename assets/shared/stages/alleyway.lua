function onCreate()

makeLuaSprite('sky','alley/alleySky',-350,-100)
setScrollFactor('sky',0.7,0.7)
addLuaSprite('sky', false)

makeLuaSprite('sky2','alley/alleySky2',-350,-100)
setScrollFactor('sky2',0.7,0.7)
setProperty('sky2.alpha',0)
addLuaSprite('sky2', false)

makeLuaSprite('mansion','alley/alleyFront',-330,-250)
addLuaSprite('mansion', false)

makeLuaSprite('lay', 'alley/overlay', 0, 0)
setObjectCamera('lay','hud')
addLuaSprite('lay', false)

makeLuaSprite('lay2', 'alley/overlay', 0, 0)
setObjectCamera('lay2','other')
addLuaSprite('lay2', false)
setProperty('lay2.alpha',0)
end
function onUpdate()
if songName == 'Fuck-You' then
setProperty('dad.x',100)
setProperty('dad.y',200)
end
if songName == 'Fatigue' then
setProperty('camGame.alpha',0.8)
end
end