--[[function onCreateHUD()
makeLuaSprite('healthBarC', 'UI/barCorruption');
setObjectCamera('healthBarC', 'camHUD');
setProperty('healthBarC.x', 339);
setProperty('healthBarC.y', 640);
addLuaSprite('healthBarC');
end

function onUpdate()
setProperty('healthBarC.alpha', getProperty('healthBar.alpha'));
setProperty('healthBarC.angle', getProperty('healthBar.angle'));
end

curFrame = 0;
curHealth = 0;
function onUpdatePost(e)
curFrame = curFrame + e*24;
	if curFrame > 9 then
		curFrame = 0;
	end
	
     curHealth = getProperty('health');
	setProperty('healthBar.bg._frame.frame.width', -215 + (math.lerp(1100, 0, curHealth/2))); --masking parts of the opponent healthbar based on some offset + health
end

function math.lerp(a, b, t)
	return a + t * (b - a);
end]]--