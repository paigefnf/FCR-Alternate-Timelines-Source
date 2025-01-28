function onCreate()    
    makeLuaSprite('building', 'stage_assets/city/orang/building', -620, -900);
    makeLuaSprite('streetBack', 'stage_assets/city/orang/streetBack', -850, -200);
    setScrollFactor('streetBack', 0.6, 0.6);
    makeLuaSprite('streetMain', 'stage_assets/city/orang/streetMain', -500, 850);
    makeLuaSprite('streetFront', 'stage_assets/city/orang/streetFront', -800, 830);
    scaleObject('streetFront', 0.8, 0.8);
    makeAnimatedLuaSprite('gfWindow','stage_assets/city/orang/gfWindow', 750, 250)
	addAnimationByPrefix('gfWindow','anim','gfWindow',24,false);
	objectPlayAnimation('gfWindow', 'anim');
	makeLuaSprite('overlay', 'stage_assets/city/orang/overlay', 0, 0);
    scaleObject('overlay',0.5,0.55)
	setObjectCamera('overlay', 'hud');
	addLuaSprite('overlay', false);	
	addLuaSprite('streetMain', false);
	addLuaSprite('streetBack', false);
	addLuaSprite('streetFront', false);
    addLuaSprite('building', false);  
    addLuaSprite('gfWindow', false); 
    setProperty('dad.color',getColorFromHex('F6B297'))
    setProperty('boyfriend.color',getColorFromHex('F6B297'))
end
function onUpdate()
setProperty('iconP2.color',getColorFromHex('F6B297'))
setProperty('iconP1.color',getColorFromHex('F6B297'))
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

