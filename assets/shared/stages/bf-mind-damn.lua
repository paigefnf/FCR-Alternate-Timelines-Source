function onCreate()
makeLuaSprite('bg','stage_assets/back', -500, -150);
makeAnimatedLuaSprite('Ends','stage_assets/end/itEndsHere', 600, 400)
addAnimationByPrefix('Ends','Ends','tv static',24,true);
scaleObject('Ends', 1.3, 1.3);
makeLuaSprite('lay', 'stage_assets/alley/overlay', 0, 0)
setObjectCamera('lay','hud')
addLuaSprite('lay', false)
makeAnimatedLuaSprite('Ends2','stage_assets/end/itEndsHereDD', 600, 400)
addAnimationByPrefix('Ends2','Ends','tv static',24,true);
scaleObject('Ends2', 1.3, 1.3);
makeAnimatedLuaSprite('Ends3','stage_assets/end/itEndsHereGF', 600, 400)
addAnimationByPrefix('Ends3','Ends','tv static',24,true);
scaleObject('Ends3', 1.3, 1.3);
makeAnimatedLuaSprite('Ends4','stage_assets/end/itEndsHereKrima', 600, 400)
addAnimationByPrefix('Ends4','Ends','tv static',24,true);
scaleObject('Ends4', 1.3, 1.3);
makeAnimatedLuaSprite('Ends5','stage_assets/end/itEndsHereMM', 600, 400)
addAnimationByPrefix('Ends5','Ends','tv static',24,true);
scaleObject('Ends5', 1.3, 1.3);
makeAnimatedLuaSprite('Ends6','stage_assets/end/itEndsHerePico', 600, 400)
addAnimationByPrefix('Ends6','Ends','tv static',24,true);
scaleObject('Ends6', 1.3, 1.3);
makeAnimatedLuaSprite('Ends7','stage_assets/end/itEndsHereSP', 600, 400)
addAnimationByPrefix('Ends7','Ends','tv static',24,true);
scaleObject('Ends7', 1.3, 1.3);
makeAnimatedLuaSprite('Ends8','stage_assets/end/itEndsHereVojAngi', 600, 350)
addAnimationByPrefix('Ends8','Ends','tv static',24,true);
scaleObject('Ends8', 1.3, 1.3);
makeAnimatedLuaSprite('Ends9','stage_assets/end/itEndsHereVojHappi', 600, 350)
addAnimationByPrefix('Ends9','Ends','tv static',24,true);
scaleObject('Ends9', 1.3, 1.3);
addLuaSprite('bg');
addLuaSprite('Ends');
addLuaSprite('Ends2');
addLuaSprite('Ends3');
addLuaSprite('Ends4');
addLuaSprite('Ends5');
addLuaSprite('Ends6');
addLuaSprite('Ends7');
addLuaSprite('Ends8');
addLuaSprite('Ends9');
for i = 2,9 do
setProperty('Ends'..i..'.alpha',0)
end
end
function onUpdate()
setShaderFloat('glow','size',getProperty('justimage.x'))
 setShaderFloat('glow','size',getProperty('justimage.y'))
 setShaderFloat('glow','dim',getProperty('justimage.x'))
 setShaderFloat('glow','dim',getProperty('justimage.y'))
setProperty('camHUD.alpha',1)

if songName == 'Damnatio XII' then
if curStep == 0 then
setProperty('camGame.alpha',0)
end
end
end