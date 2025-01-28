function onCreate()
makeLuaSprite('bg','back', -500, -150);
makeAnimatedLuaSprite('Ends','stage_assets/end/itEndsHere', 600, 400)
addAnimationByPrefix('Ends','Ends','tv static',24,true);
scaleObject('Ends', 1.3, 1.3);
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
function onCreatePost()
initLuaShader("glitchsy");
makeLuaSprite("glitchsy");
makeGraphic("glitchsy", screenWidth, screenHeight);
setSpriteShader("glitchsy", "glitchsy");
addHaxeLibrary("ShaderFilter", "openfl.filters");
runHaxeCode([[
trace(ShaderFilter);
game.camGame.setFilters([new ShaderFilter(game.getLuaObject("glitchsy").shader)]);
game.camOther.setFilters([new ShaderFilter(game.getLuaObject("glitchsy").shader)]);
game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("glitchsy").shader)]);
]]);
end
function onUpdate()
setShaderFloat('glow','size',getProperty('justimage.x'))
 setShaderFloat('glow','size',getProperty('justimage.y'))
 setShaderFloat('glow','dim',getProperty('justimage.x'))
 setShaderFloat('glow','dim',getProperty('justimage.y'))
setProperty('camHUD.alpha',0.4)
setProperty('dad.visible',false)
setProperty('iconP2.visible',false)
end
function onStepHit()
if curStep == 640 then
setProperty('Ends.alpha',0)
setProperty('Ends2.alpha',1)
end
if curStep == 704 then
setProperty('Ends2.alpha',0)
setProperty('Ends7.alpha',1)
end
if curStep == 896 then
setProperty('Ends7.alpha',0)
setProperty('Ends3.alpha',1)
end
if curStep == 966 then
setProperty('Ends3.alpha',0)
setProperty('Ends6.alpha',1)
end
if curStep == 1024 then
setProperty('Ends6.alpha',0)
setProperty('Ends5.alpha',1)
end
if curStep == 1120 then
setProperty('Ends5.alpha',0)
setProperty('Ends4.alpha',1)
end
if curStep == 1152 then
setProperty('Ends4.alpha',0)
setProperty('Ends8.alpha',1)
end
if curStep == 1184 then
setProperty('Ends8.alpha',0)
setProperty('Ends9.alpha',1)
end
if curStep == 1216 then
setProperty('Ends9.alpha',0)
setProperty('Ends3.alpha',1)
end
if curStep == 1256 then
setProperty('Ends3.alpha',0)
setProperty('Ends.alpha',1)
end
end