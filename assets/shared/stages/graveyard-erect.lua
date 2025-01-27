function onCreate()
    makeLuaSprite('frontstage', 'graveyard3/frontstage', -300, -50);
    scaleObject('frontstage', 1.1, 1.1);
    
    makeLuaSprite('frontgraves', 'graveyard3/frontgraves', -195, -15);
    
    makeLuaSprite('gate', 'graveyard3/gate', -200, 50);
    setScrollFactor('gate', 0.9, 0.9);
    
    makeLuaSprite('bg', 'graveyard3/bg', -200, -150);
    setScrollFactor('bg', 0.1, 0.1);
    
    makeLuaSprite('backhills', 'graveyard3/backhills', -400, 0);
    setScrollFactor('backhills', 0.35, 1);
    
    makeLuaSprite('spookymansion', 'graveyard3/spookymansion', -50, -80);
    scaleObject('spookymansion', 0.85, 0.85);
    setScrollFactor('spookymansion', 0.3, 0.3);
    
    makeLuaSprite('trees', 'graveyard3/trees', -380, -70);
    setScrollFactor('trees', 0.5, 0.5);
    
    makeAnimatedLuaSprite('GHOSTbacktombs','graveyard3/GHOSTbacktombs', -200, -50)
	addAnimationByPrefix('GHOSTbacktombs','idle','ghost idle',35,true);
	objectPlayAnimation('GHOSTbacktombs','idle',true);
	setScrollFactor('GHOSTbacktombs', 0.4, 1);
	
	makeAnimatedLuaSprite('lemon','lemon', 0, 200)
	addAnimationByPrefix('lemon','idle','monster idle',35,true);
	objectPlayAnimation('lemon','idle',true);
    
    makeLuaSprite('reveal', 'overlay', 0, 0);
    setObjectCamera('reveal', 'hud')
    setProperty('reveal.alpha', 0.8);
    
makeLuaSprite('reveal2', 'overlay', 0, 0);
    setObjectCamera('reveal2', 'other')
    setProperty('reveal2.alpha', 0.6);

makeLuaSprite('flash', '', 0, 0);
makeGraphic('flash',1280,720,'000000')
setProperty('flash.scale.x',99)
setProperty('flash.scale.y',99)
makeLuaSprite('flash2', '', 0, 0);
makeGraphic('flash2',1280,720,'ffffff')
setObjectCamera('flash2', 'other')
setProperty('flash2.alpha',0);
makeLuaSprite('justimage',nil,5,5)
    addLuaSprite('bg', false);
    addLuaSprite('spookymansion', false);
    addLuaSprite('backhills', false);
    addLuaSprite('GHOSTbacktombs', false);
    addLuaSprite('trees', false);
    addLuaSprite('lemon', false);
    addLuaSprite('gate', false);
    addLuaSprite('frontstage', false);
    addLuaSprite('frontgraves', false);
    addLuaSprite('flash', false);
    addLuaSprite('thunder', true);
    addLuaSprite('reveal', true);
    addLuaSprite('flash', false);
    addLuaSprite('flash2', true);
    addLuaSprite('reveal2', true);
setPropertyFromClass('GameOverSubstate', 'characterName', 'pico-dead')
setProperty('backtombs.alpha', 1);
    setProperty('GHOSTbacktombs.alpha', 0);
    setProperty('lemon.alpha', 0);
addLuaScript('scripts/extra_scripts/createShader')

callScript('scripts/extra_scripts/createShader','createShader',{'glow','glow'})
end
function onUpdate()
setShaderFloat('glow','size',getProperty('justimage.x'))
 setShaderFloat('glow','size',getProperty('justimage.y'))
 setShaderFloat('glow','dim',getProperty('justimage.x'))
 setShaderFloat('glow','dim',getProperty('justimage.y'))
if curStep <= 0 then
setProperty('camHUD.alpha',0)
setProperty('dad.visible',false)
setProperty('boyfriend.visible',false)
setProperty('gf.visible',false)
triggerEvent('Camera Follow Pos','880', '480')
end
end
function onCreatePost()
initLuaShader("glow");
makeLuaSprite("glow");
makeGraphic("glow", screenWidth, screenHeight);
setSpriteShader("glow", "glow");
addHaxeLibrary("ShaderFilter", "openfl.filters");
runHaxeCode([[
trace(ShaderFilter);
game.camGame.setFilters([new ShaderFilter(game.getLuaObject("glow").shader)]);
]]);
end
function onStepHit()
if curStep == 96 then
setProperty('boyfriend.visible',true)
end
if curStep == 120 then
setProperty('dad.visible',true)
end
if curStep == 240 then
doTweenX('111','justimage',0.0,2)
doTweenY('111','justimage',0.0,2)
doTweenAlpha('flash2','flash2',1,2,'')
end
if curStep == 256 then
setProperty('reveal2.alpha', 0);
triggerEvent('Camera Follow Pos','', '')
setProperty('flash.alpha',0);
setProperty('camHUD.alpha',1)
doTweenX('111','justimage',5.0,1.5)
doTweenY('111','justimage',5.0,1.5)
doTweenAlpha('flash2','reveaL',0.6,1,'linear')
doTweenAlpha('flash2','flash2',0,2,'linear')
end
if curStep == 640 then
    setProperty('backtombs.alpha', 0);
    setProperty('GHOSTbacktombs.alpha', 1);
    setProperty('lemon.alpha', 1);
    doTweenAlpha('flash2','reveaL',1,1,'linear')
    end
if curStep == 768 then
    setProperty('backtombs.alpha', 1);
    setProperty('GHOSTbacktombs.alpha', 0);
    setProperty('lemon.alpha', 0);
    doTweenAlpha('flash2','reveaL',0.6,1,'linear')
    end
if curStep == 1152 then
    setProperty('backtombs.alpha', 0);
    setProperty('GHOSTbacktombs.alpha', 1);
    setProperty('lemon.alpha', 1);
    doTweenAlpha('flash2','reveaL',1,1,'linear')
    end  
if curStep == 1216 then
    setProperty('backtombs.alpha', 1);
    setProperty('GHOSTbacktombs.alpha', 0);
    setProperty('lemon.alpha', 0);
    doTweenAlpha('flash2','reveaL',0.6,1,'linear')
    end      
end