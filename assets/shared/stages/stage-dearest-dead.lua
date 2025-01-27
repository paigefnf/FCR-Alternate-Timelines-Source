function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'fatherShadow/stagebackShadow', -400, -400);
	setScrollFactor('stageback', 0.9, 0.9);
	addLuaSprite('stageback', false);

	makeLuaSprite('stagefront', 'fatherShadow/stagefrontShadow', -600, 600);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);
	addLuaSprite('stagefront', false);

	makeLuaSprite('stagecurtains', 'fatherShadow/stagecurtainsShadow', -300, -300);
	setScrollFactor('stagecurtains', 1.3, 1.3);
	scaleObject('stagecurtains', 0.9, 0.9);
	addLuaSprite('stagecurtains', false);

    makeLuaSprite('reveal', 'overlay', 0, 0);
    addLuaSprite('reveal')
    setObjectCamera('reveal', 'hud')
end
function onUpdate()
setProperty('dad.x',200)
setProperty('dad.y',200)
setProperty('gf.x',350)
setProperty('gf.y',200)
end