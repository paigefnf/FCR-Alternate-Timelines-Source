function onCreate()
    makeLuaSprite('frontstage', 'stage_assets/graveyard/frontstage', -300, -50);
    scaleObject('frontstage', 1.1, 1.1);
    
    makeLuaSprite('frontgraves', 'stage_assets/graveyard/frontgraves', -195, -15);
    
    makeLuaSprite('gate', 'stage_assets/graveyard/gate', -200, 50);
    setScrollFactor('gate', 0.9, 0.9);
    
    makeLuaSprite('bg', 'stage_assets/graveyard/bg', -200, -150);
    setScrollFactor('bg', 0.1, 0.1);
    
    makeLuaSprite('backhills', 'stage_assets/graveyard/backhills', -350, 0);
    setScrollFactor('backhills', 0.35, 1);
    
    makeLuaSprite('spookymansion', 'stage_assets/graveyard/spookymansion', -50, -80);
    scaleObject('spookymansion', 0.85, 0.85);
    setScrollFactor('spookymansion', 0.3, 0.3);
    
    makeLuaSprite('trees', 'stage_assets/graveyard/trees', -380, -70);
    setScrollFactor('trees', 0.5, 0.5);
    
    makeLuaSprite('backtombs', 'stage_assets/graveyard/backtombs', -200, -50);
    setScrollFactor('backtombs', 0.4, 1);
    
    makeAnimatedLuaSprite('fogRigor','stage_assets/fogRigorLame', 0, 0)
	addAnimationByPrefix('fogRigor','anim','fog idle',24,true);
	objectPlayAnimation('fogRigor','anim',true);
    setObjectCamera('fogRigor', 'hud');
    scaleObject('fogRigor', 2.2, 2.2);
    
    makeLuaSprite('thunder', '', 0, 0);
    setObjectCamera('thunder', 'hud');
    makeGraphic('thunder', 1280, 730, 'FFFFFF');
    setProperty('thunder.alpha', 0);
    
    addLuaSprite('bg', false);
    addLuaSprite('spookymansion', false);
    addLuaSprite('backhills', false);
    addLuaSprite('backtombs', false);
    addLuaSprite('trees', false);
    addLuaSprite('gate', false);
    addLuaSprite('frontstage', false);
    addLuaSprite('frontgraves', false);
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