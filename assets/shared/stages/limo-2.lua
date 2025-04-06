function onCreate()

makeAnimatedLuaSprite('backMan','stage_assets/limo2/backMan',-400,-100)
addAnimationByPrefix('backMan','idle','backMan',24,false)
addLuaSprite('backMan')

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