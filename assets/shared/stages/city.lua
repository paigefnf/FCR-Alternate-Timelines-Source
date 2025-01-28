function onCreate()
    makeLuaSprite('building', 'stage_assets/city/building', -620, -900);
    makeLuaSprite('streetBack', 'stage_assets/city/streetBack', -850, -200);
    setScrollFactor('streetBack', 0.6, 0.6);
    makeLuaSprite('streetMain', 'stage_assets/city/streetMain', -500, 850);
    makeLuaSprite('streetFront', 'stage_assets/city/streetFront', -800, 830);
    scaleObject('streetFront', 0.8, 0.8);
    makeAnimatedLuaSprite('gfWindow','stage_assets/city/gfWindow', 750, 250)
	addAnimationByPrefix('gfWindow','anim','gfWindow',24,false);
	objectPlayAnimation('gfWindow', 'anim');
	makeLuaSprite('overlay', 'stage_assets/city/overlay', 0, 0);
	setObjectCamera('overlay', 'hud');
	addLuaSprite('overlay', false);	
	addLuaSprite('streetMain', false);
	addLuaSprite('streetBack', false);
	addLuaSprite('streetFront', false);
    addLuaSprite('building', false);  
    addLuaSprite('gfWindow', false);   
end
function onCountdownTick(counter)
if counter % 2 == 0 then
objectPlayAnimation('gfWindow', 'anim');
end
end
function onBeatHit()
if curBeat % 2 == 0 then
objectPlayAnimation('gfWindow', 'anim');
end
end

