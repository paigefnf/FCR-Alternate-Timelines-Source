function onCreate()

makeLuaSprite('sky','stage_assets/limo2/limoSky',-3200,-800)
setScrollFactor('sky',0.7,0.7)
addLuaSprite('sky')

makeLuaSprite('front','stage_assets/limo2/frontStreet',300,-200)
setScrollFactor('front',0.9,0.9)
screenCenter('front','x')
addLuaSprite('front')

makeLuaSprite('light1','stage_assets/limo2/streetLight',-500,-600)
addLuaSprite('light1')

makeLuaSprite('light2','stage_assets/limo2/streetLight',300,-600)
addLuaSprite('light2')

makeLuaSprite('light3','stage_assets/limo2/streetLight',1100,-600)
addLuaSprite('light3')

makeLuaSprite('light4','stage_assets/limo2/streetLight',1900,-600)
addLuaSprite('light4')

makeAnimatedLuaSprite('backMan','stage_assets/limo2/backMan',-400,-100)
addAnimationByPrefix('backMan','idle','backMan',24,false)
addLuaSprite('backMan')

makeLuaSprite('backCar','stage_assets/limo2/backCar',-300,50)
scaleObject('backCar',1.2,1)
addLuaSprite('backCar')

makeLuaSprite('frontCar','stage_assets/limo2/frontCar',-25,0)
addLuaSprite('frontCar')

makeLuaSprite('filter','stage_assets/limo2/filter',-3200,-800)
setScrollFactor('filter',0.6,0.6)
setProperty('filter.alpha',1)
addLuaSprite('filter',true)

makeAnimatedLuaSprite('frontMan','stage_assets/limo2/frontMans',450,100)
addAnimationByPrefix('frontMan','idle','frontMans',24,false)
setScrollFactor('frontMan',1.8,1.8)
addLuaSprite('frontMan',true)

makeLuaSprite('lay','overlay',0,0)
setObjectCamera('lay','hud')
addLuaSprite('lay')

end
function onCountdownTick(count)
if count == 2 then
objectPlayAnimation('backMan','idle')
objectPlayAnimation('frontMan','idle')
end
end
function onBeatHit()
if curBeat %2 == 0 then
objectPlayAnimation('backMan','idle')
objectPlayAnimation('frontMan','idle')
end
end