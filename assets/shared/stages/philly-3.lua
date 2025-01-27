function onCreate()
makeLuaSprite('bg','philly3/sky', -800, -1000);
setLuaSpriteScrollFactor('bg', 0.1, 0.1);		
makeLuaSprite('bg2','philly3/skyEclipse', -800, -1000);
setLuaSpriteScrollFactor('bg2', 0.1, 0.1);		
makeLuaSprite('city','philly3/city', -600, -400);
setLuaSpriteScrollFactor('city', 0.3, 0.3)	
makeLuaSprite('streetBehind','behindTrain', -200, -100);
makeLuaSprite('phillyStreet','street', -650, 500);	
makeLuaSprite('overlayLights', 'overlay', 0, 0);
setObjectCamera('overlayLights', 'hud');
makeLuaSprite('black', '', 0, 0);
makeGraphic('black',1280,720,'000000')	
setObjectCamera('black', 'other');
makeLuaSprite('lightOverlay','philly3/lightOverlay', -1800, -400);
addLuaSprite('overlayLights', false);
addLuaSprite('bg2', false);
addLuaSprite('bg', false);
addLuaSprite('city', false);
addLuaSprite('streetBehind', false);
addLuaSprite('phillyStreet', false);    
addLuaSprite('black', false);
addLuaSprite('lightOverlay', false);
setProperty('lightOverlay.alpha',0)
setProperty('black.alpha',0)
end

function onUpdate()
setProperty('boyfriend.color',getColorFromHex('FFA3A9'))
setProperty('dad.color',getColorFromHex('FFA3A9'))
setProperty('gf.color',getColorFromHex('FFA3A9'))
end
