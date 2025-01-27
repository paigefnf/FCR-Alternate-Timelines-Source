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
	
	makeAnimatedLuaSprite('fogRigor','fogRigor', 0, 0)
	addAnimationByPrefix('fogRigor','anim','fog idle',24,true);
	objectPlayAnimation('fogRigor','anim',true);
    setObjectCamera('fogRigor', 'other');
    scaleObject('fogRigor', 2.2, 2.2);
    
    makeAnimatedLuaSprite('fogRigorLame','fogRigorLame', 0, 0)
	addAnimationByPrefix('fogRigorLame','anim','fog idle',24,true);
	objectPlayAnimation('fogRigorLame','anim',true);
    setObjectCamera('fogRigorLame', 'other');
    scaleObject('fogRigorLame', 2.2, 2.2);
    
    makeLuaSprite('thunder', '', 0, 0);
    setObjectCamera('thunder', 'hud');
    makeGraphic('thunder', 1280, 730, 'FFFFFF');
    setProperty('thunder.alpha', 0);
    
    addLuaSprite('bg', false);
    addLuaSprite('spookymansion', false);
    addLuaSprite('backhills', false);
    addLuaSprite('GHOSTbacktombs', false);
    addLuaSprite('trees', false);
    addLuaSprite('lemon', false);
    addLuaSprite('gate', false);
    addLuaSprite('frontstage', false);
    addLuaSprite('frontgraves', false);
    addLuaSprite('fogRigorLame', true);
    addLuaSprite('fogRigor', true);
    addLuaSprite('thunder', true);
    
    setPropertyFromClass('GameOverSubstate', 'characterName', 'pico-dead')
end

function onCreatePost()
    math.randomseed(os.time());
	thunder3 = math.random(12, 24);

	runTimer('thunder2', thunder3)
end

function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'thunder2' then
    playSound('thunder_2', 0.7);
    setProperty('thunder.alpha', 0.5);
    doTweenAlpha('thunder', 'thunder', 0, 0.5, 'linear');
    
    runTimer('thunder2', thunder3)
end
end

function onStepHit()
    if curStep == 1156 then
    setProperty('backtombs.alpha', 0);
    setProperty('GHOSTbacktombs.alpha', 1);
    setProperty('lemon.alpha', 1);
    setProperty('overlay.alpha', 1);
    end
end