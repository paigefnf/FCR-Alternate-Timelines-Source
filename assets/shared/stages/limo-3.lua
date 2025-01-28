function onCreate()
makeLuaSprite('sky','stage_assets/limo3/limoSky',-3200,-800)
setScrollFactor('sky',0.7,0.7)
addLuaSprite('sky')
    
makeLuaSprite('front','stage_assets/limo3/frontStreet',300,-200)
setScrollFactor('front',0.9,0.9)
screenCenter('front','x')
addLuaSprite('front')
    
makeLuaSprite('light1','stage_assets/limo3/streetLight',-500,-600)
addLuaSprite('light1')
    
makeLuaSprite('light2','stage_assets/limo3/streetLight',300,-600)
addLuaSprite('light2')
    
makeLuaSprite('light3','stage_assets/limo3/streetLight',1100,-600)
addLuaSprite('light3')
    
makeLuaSprite('light4','stage_assets/limo3/streetLight',1900,-600)
addLuaSprite('light4')
    
makeAnimatedLuaSprite('backMan','stage_assets/limo2/backMan',-400,-100)
addAnimationByPrefix('backMan','idle','backMan',24,false)
addLuaSprite('backMan')
    
makeLuaSprite('backCar','stage_assets/limo3/backCar',-300,50)
scaleObject('backCar',1.2,1)
addLuaSprite('backCar')    

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

makeLuaSprite('frontCar','stage_assets/limo3/frontCar',-25,0)
addLuaSprite('frontCar')

makeLuaSprite('filter','stage_assets/limo2/filter',-3200,-800)
setScrollFactor('filter',0.7,0.7)
setProperty('filter.alpha',1)
addLuaSprite('filter',true)

makeAnimatedLuaSprite('frontMan','stage_assets/limo2/frontMans',450,100)
addAnimationByPrefix('frontMan','idle','frontMans',24,false)
setScrollFactor('frontMan',1.8,1.8)
addLuaSprite('frontMan',true)
makeAnimatedLuaSprite('fog','stage_assets/limo3/funkerFog',-600,-600)
addAnimationByPrefix('fog','fog','fog idle',24,true)
setGraphicSize('fog',3000,3000)
screenCenter('fog')
setScrollFactor('fog',0,0)
addLuaSprite('fog',true)

makeLuaSprite('lay','overlay',0,0)
setObjectCamera('lay','hud')
addLuaSprite('lay')

setProperty('henchmen1.alpha',0)
setProperty('henchmen2.alpha',0)
setProperty('henchmen3.alpha',0)
setProperty('henchmen4.alpha',0)
setProperty('henchmen5.alpha',0)
end
function onCountdownTick(count)
if count == 2 then
objectPlayAnimation('backMan','idle')
objectPlayAnimation('frontMan','idle')
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
objectPlayAnimation('backMan','idle')
objectPlayAnimation('frontMan','idle')
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