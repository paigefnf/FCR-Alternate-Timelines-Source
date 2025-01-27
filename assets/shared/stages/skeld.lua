function onCreate()    
    makeLuaSprite('red', '', 0, 0);
    makeGraphic('red',1280,720,'FF0000')	
    setProperty('red.alpha',0)    
    setLuaSpriteScrollFactor('red',0,0)
    setObjectCamera('red', 'hud');
    addLuaSprite('red', true);
    makeLuaSprite('skeld', 'skeld', -520, -360);
    makeAnimatedLuaSprite('egmg','emergencyMeeting', -150, -150)
	addAnimationByPrefix('egmg','anim','NOTIFICATION',24,false);
	setObjectCamera('egmg', 'hud');
	setProperty('egmg.alpha',0)
	makeLuaSprite('overlay', 'overlay2', 0, -50);
	setObjectCamera('overlay', 'hud');
	addLuaSprite('overlay', false);
	addLuaSprite('skeld', false);
	addLuaSprite('egmg', false);
end
function onEvent(name, value1, value2)
if name == "Sus Alarm" then
if value1 == 'susalarm' then
setProperty('red.alpha',0.7)
doTweenAlpha('red','red',0,tonumber(value2),'linear')
end
end
end
function onUpdate()
if curStep == 20 then
setProperty('egmg.alpha',1)
end
if curStep == 600 then
objectPlayAnimation('egmg','anim',false);
end
end
