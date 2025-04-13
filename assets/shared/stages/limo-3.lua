function onCreate()

makeAnimatedLuaSprite('henchmen1','stage_assets/limo3/henchmen',400,-350)
addAnimationByPrefix('henchmen1','idle','leDance',24,false)
scaleObject('henchmen1',1.2,1.2)
addLuaSprite('henchmen1')

makeAnimatedLuaSprite('henchmen2','stage_assets/limo3/henchmen',800,-350)
addAnimationByPrefix('henchmen2','idle','leDance',24,false)
scaleObject('henchmen2',1.2,1.2)
addLuaSprite('henchmen2')

makeAnimatedLuaSprite('henchmen3','stage_assets/limo3/henchmen',1200,-350)
addAnimationByPrefix('henchmen3','idle','leDance',24,false)
scaleObject('henchmen3',1.2,1.2)
addLuaSprite('henchmen3')

makeAnimatedLuaSprite('henchmen4','stage_assets/limo3/henchmen',1600,-350)
addAnimationByPrefix('henchmen4','idle','leDance',24,false)
scaleObject('henchmen4',1.2,1.2)
addLuaSprite('henchmen4')

makeAnimatedLuaSprite('henchmen5','stage_assets/limo3/henchmen',2000,-350)
addAnimationByPrefix('henchmen5','idle','leDance',24,false)
scaleObject('henchmen5',1.2,1.2)
addLuaSprite('henchmen5')

makeAnimatedLuaSprite('fog','stage_assets/limo3/funkerFog',-600,-600)
addAnimationByPrefix('fog','fog','fog idle',24,true)
setGraphicSize('fog',3000,3000)
screenCenter('fog')
setScrollFactor('fog',0,0)
addLuaSprite('fog',true)

setProperty('henchmen1.alpha',0)
setProperty('henchmen2.alpha',0)
setProperty('henchmen3.alpha',0)
setProperty('henchmen4.alpha',0)
setProperty('henchmen5.alpha',0)
end
function onCountdownTick(count)
if count == 2 then
objectPlayAnimation('henchmen1','idle')
objectPlayAnimation('henchmen2','idle')
objectPlayAnimation('henchmen3','idle')
objectPlayAnimation('henchmen4','idle')
objectPlayAnimation('henchmen5','idle')
end
end
function onBeatHit()
if curBeat %2 == 0 then
objectPlayAnimation('henchmen1','idle')
objectPlayAnimation('henchmen2','idle')
objectPlayAnimation('henchmen3','idle')
objectPlayAnimation('henchmen4','idle')
objectPlayAnimation('henchmen5','idle')
end
end
function onUpdate()
if songName == 'Glammed' then
setProperty('fog.alpha',0)
if curStep == 512 then
setProperty('henchmen1.alpha',1)
setProperty('henchmen2.alpha',1)
setProperty('henchmen3.alpha',1)
setProperty('henchmen4.alpha',1)
setProperty('henchmen5.alpha',1)
end
end
end