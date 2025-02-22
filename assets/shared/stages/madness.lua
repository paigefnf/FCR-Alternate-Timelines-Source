function onCreatePost() 
setProperty('health', 2)
makeLuaSprite('bg', 'stage_assets/smile/FIRST_BG', 0, 0)
addLuaSprite('bg', false)
scaleObject('bg', 1, 1)

makeLuaSprite('sn', 'stage_assets/smile/FIRST_SN', 1200, 300)
addLuaSprite('sn', false)
scaleObject('sn', 1, 1)

makeLuaSprite('pc', 'stage_assets/smile/FIRST_PC', 960, 250)
addLuaSprite('pc', false)
scaleObject('pc', 1, 1)

createInstance('text', 'flixel.addons.display.FlxBackdrop', {})
loadGraphic('text', 'stage_assets/smile/DEATHTEXT')
setProperty('text.velocity.y', 650)
addInstance('text', true)
scaleObject('text', 1, 1)
updateHitbox('text')
setProperty('text.alpha', 0.4)
setProperty('text.visible', false)

makeLuaSprite('wallpaper', 'stage_assets/smile/wallpaper', 250, -250)
addLuaSprite('wallpaper', false)
scaleObject('wallpaper', 1.9, 1.9)
setProperty('wallpaper.visible', false)

makeLuaSprite('windBar', 'stage_assets/smile/TASKBAR', 470, 1010)
addLuaSprite('windBar', false)
scaleObject('windBar', 1.12, 1.12)
setProperty('windBar.visible', false)

makeAnimatedLuaSprite('wallpaperxpbroke', 'stage_assets/smile/merge', 350, -150)
addAnimationByPrefix('wallpaperxpbroke', 'i', 'loop', 24, true)
addLuaSprite('wallpaperxpbroke', false)
scaleObject('wallpaperxpbroke', 1.6, 1.1)
setProperty('wallpaperxpbroke.visible', false)

makeLuaSprite('wallpaperxp', 'stage_assets/smile/hellnah', 350, -150)
addLuaSprite('wallpaperxp', false)
scaleObject('wallpaperxp', 2.6, 2.1)
setProperty('wallpaperxp.visible', false)

makeLuaSprite('windBarxp', 'stage_assets/smile/TASKBARXP', 470, 1013)
addLuaSprite('windBarxp', false)
scaleObject('windBarxp', 1.12, 1.12)
setProperty('windBarxp.visible', false)

createInstance('dickdog', 'flixel.addons.display.FlxBackdrop', {nil, 0x01, -500})
loadFrames('dickdog', 'stage_assets/smile/fuckers')
addAnimationByPrefix('dickdog', 'loop', 'loop', 12, true)
setProperty('dickdog.velocity.x', -500)
setProperty('dickdog.y', 820)
setProperty('dickdog2.flipX', true)
addInstance('dickdog', true)
scaleObject('dickdog', 1.3, 1.3)
setProperty('dickdog.visible', false)

createInstance('dickdog2', 'flixel.addons.display.FlxBackdrop', {nil, 0x01, -500})
loadFrames('dickdog2', 'stage_assets/smile/fuckers')
addAnimationByPrefix('dickdog2', 'loop', 'loop', 12, true)
setProperty('dickdog2.velocity.x', 500)
setProperty('dickdog2.y', -200)
setProperty('dickdog2.flipY', true)
setProperty('dickdog2.flipX', false)
addInstance('dickdog2', true)
scaleObject('dickdog2', 1.3, 1.3)
setProperty('dickdog2.visible', false)

makeLuaSprite('bluescreen', 'stage_assets/smile/BLUESCREENXP', 0, 0)
addLuaSprite('bluescreen', false)
setObjectCamera('bluescreen', 'other')
screenCenter('bluescreen')
setProperty('bluescreen.scale.x', '0.7')
setProperty('bluescreen.scale.y', '0.7')
setProperty('bluescreen.visible', false)

makeLuaSprite('LATE', 'stage_assets/smile/YOURETOOLATE', 0, 0)
addLuaSprite('LATE', false)
setObjectCamera('LATE', 'other')
screenCenter('LATE')
setProperty('LATE.scale.x', '0.47')
setProperty('LATE.scale.y', '0.45')
setProperty('LATE.alpha', 0.3)
setProperty('LATE.visible', false)

makeLuaSprite('SPREAD', 'stage_assets/smile/SPREADTHEWORD', 0, 0)
addLuaSprite('SPREAD', false)
setObjectCamera('SPREAD', 'other')
screenCenter('SPREAD')
setProperty('SPREAD.scale.x', '0.47')
setProperty('SPREAD.scale.y', '0.45')
setProperty('SPREAD.visible', false)

makeLuaSprite('bartop','',0,0)
makeGraphic('bartop',1280,100,'000000')
addLuaSprite('bartop',false)
 
makeLuaSprite('barbot','',0,620)
makeGraphic('barbot',1280,100,'000000')
addLuaSprite('barbot',false)

setScrollFactor('bartop',0,0)
setScrollFactor('barbot',0,0)
setObjectCamera('bartop','hud')
setObjectCamera('barbot','hud')

makeLuaSprite('scare', 'stage_assets/smile/scaries/smiledog_beast/screamer1', 0, 0)
addLuaSprite('scare', true)
setObjectCamera("scare", 'hud')
setProperty('scare.alpha', 0)
setProperty('scare.scale.y', '1.1')
setProperty('scare.scale.x', '1.1')

makeLuaSprite('scare2', 'stage_assets/smile/scaries/smiledog_beast/screamer2', 0, 0)
addLuaSprite('scare2', true)
setObjectCamera("scare2", 'hud')
setProperty('scare2.alpha', 0)
setProperty('scare2.scale.y', '1.1')
setProperty('scare2.scale.x', '1.1')

makeLuaSprite('scare3', 'stage_assets/smile/scaries/smiledog_beast/screamer3', 0, 0)
addLuaSprite('scare3', true)
setObjectCamera("scare3", 'hud')
setProperty('scare3.alpha', 0)
setProperty('scare3.scale.y', '1.1')
setProperty('scare3.scale.x', '1.1')

makeLuaSprite('youwin', 'stage_assets/smile/HURRAY', 0, 0)
addLuaSprite('youwin', true)
setObjectCamera("youwin", 'other')
setProperty('youwin.alpha', 0)
screenCenter('youwin')
setProperty('youwin.scale.y', '1.37')
setProperty('youwin.scale.x', '1.37')

makeLuaSprite('youfuck', 'stage_assets/smile/OHNO', 0, 0)
addLuaSprite('youfuck', true)
setObjectCamera("youfuck", 'other')
setProperty('youfuck.alpha', 0)
screenCenter('youfuck')
setProperty('youfuck.scale.y', '1.37')
setProperty('youfuck.scale.x', '1.37')

makeLuaSprite('healthP2', 'ui/bars/health/mind-square/win-p1',nil, nil)
addLuaSprite('healthP2', false);
setObjectCamera('healthP2', 'hud')
scaleObject('healthP2', 0.8, 0.8)
screenCenter('healthP2','x')
setProperty("healthP2.x",890)
setProperty("healthP2.visible",false)

makeLuaSprite('health', 'ui/bars/health/mind-square/win-p1',nil, nil)
addLuaSprite('health', false);
setObjectCamera('health', 'hud')
scaleObject('health', 0.8, 0.8)
screenCenter('health','x')
setProperty("health.x",890)
setProperty("health.flipX",true)

makeLuaSprite('healthBase', 'ui/bars/health/mind-square/frame', nil, nil)
addLuaSprite('healthBase', false);
setObjectCamera('healthBase', 'hud')
scaleObject('healthBase', 0.8, 0.8)
screenCenter('healthBase','x')
setProperty("healthBase.alpha",1)
setProperty("healthBase.x",830)
setProperty("healthBase.flipX",true)

makeAnimatedLuaSprite('icons11', 'icons/icon-haha-sarah', 1150, 0)
luaSpriteAddAnimationByPrefix('icons11', 'idle', 'haha sarah healthy icon', 24, true)
setObjectCamera('icons11', 'hud')
addLuaSprite('icons11', false);
setProperty('icons11.flipX', false)
setProperty('icons11.scale.x', '1.7')
setProperty('icons11.scale.y', '1.7')

makeAnimatedLuaSprite('icons22', 'icons/icon-haha-dog', 800, 0)
luaSpriteAddAnimationByPrefix('icons22', 'idle', 'haha smile dog healthy icon', 24, true)
setObjectCamera('icons22', 'hud')
addLuaSprite('icons22', false);
setProperty('icons22.flipX', false)
setProperty('icons22.scale.x', '0.8')
setProperty('icons22.scale.y', '0.8')

makeAnimatedLuaSprite('icons1', 'ui/icons/icon-mom-mind-squared', 1150, 0)
luaSpriteAddAnimationByPrefix('icons1', 'idle', 'mom healthy icon', 24, true)
setObjectCamera('icons1', 'hud')
addLuaSprite('icons1', false);
setProperty('icons1.flipX', false)
setProperty('icons1.scale.x', '1.7')
setProperty('icons1.scale.y', '1.7')

makeAnimatedLuaSprite('icons2', 'icons/icon-creepy-dog', 750, 0)
luaSpriteAddAnimationByPrefix('icons2', 'idle', 'creepy smile dog healthy icon', 24, true)
setObjectCamera('icons2', 'hud')
addLuaSprite('icons2', false);
setProperty('icons2.flipX', false)
setProperty('icons2.scale.x', '0.8')
setProperty('icons2.scale.y', '0.8')

makeAnimatedLuaSprite('icons11', 'icons/icon-haha-sarah', 1150, 0)
luaSpriteAddAnimationByPrefix('icons11', 'idle', 'haha sarah healthy icon', 24, true)
setObjectCamera('icons11', 'hud')
addLuaSprite('icons11', false);
setProperty('icons11.flipX', false)
setProperty('icons11.scale.x', '1.7')
setProperty('icons11.scale.y', '1.7')
setProperty('icons11.visible', false)

makeAnimatedLuaSprite('icons22', 'icons/icon-haha-dog', 800, 0)
luaSpriteAddAnimationByPrefix('icons22', 'idle', 'haha smile dog healthy icon', 24, true)
setObjectCamera('icons22', 'hud')
addLuaSprite('icons22', false);
setProperty('icons22.flipX', false)
setProperty('icons22.scale.x', '0.8')
setProperty('icons22.scale.y', '0.8')
setProperty('icons22.visible', false)

setObjectOrder('DEATHTOALL', getObjectOrder('wallpaper') + 1);
setObjectOrder('DEATHTOALL', getObjectOrder('text') + 1);
setObjectOrder('dadGroup', getObjectOrder('text') + 2);
setObjectOrder('dadGroup', getObjectOrder('DEATHTOALL') + 2);

makeLuaSprite('polaroid','stage_assets/smile/PEEKABOO',0,0);
    scaleLuaSprite("polaroid", 0.0, 0.0)
    screenCenter("polaroid", 'xy');
    setObjectCamera("polaroid", 'camOther')
    setProperty('polaroid.alpha',0)
    addLuaSprite("polaroid",true);

end

function onBeatHit()
setProperty('icons1.scale.y', '1.95')
setProperty('icons1.scale.x', '1.95')
setProperty('icons2.scale.y', '1')
setProperty('icons2.scale.x', '1')
setProperty('icons11.scale.y', '1.95')
setProperty('icons11.scale.x', '1.95')
setProperty('icons22.scale.y', '1')
setProperty('icons22.scale.x', '1')
doTweenX("IconX", "icons1.scale", 1.7, 0.3, "sineout")
doTweenY("IconY", "icons1.scale", 1.7, 0.3, "sineout")
doTweenX("Icon2X", "icons2.scale", 0.8, 0.3, "sineout")
doTweenY("Icon2Y", "icons2.scale", 0.8, 0.3, "sineout")
doTweenX("IconnX", "icons11.scale", 1.7, 0.3, "sineout")
doTweenY("IconnY", "icons11.scale", 1.7, 0.3, "sineout")
doTweenX("Icon22X", "icons22.scale", 0.8, 0.3, "sineout")
doTweenY("Icon22Y", "icons22.scale", 0.8, 0.3, "sineout")
end

function onUpdatePost()
setProperty('showRating', false)
setProperty('showComboNum', false)
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('healthBar.visible', false)

setProperty('timeBar.visible', false)
setProperty('timeBarBG.visible', false)
setProperty('timeTxt.visible', false)

setProperty('scare.x', 0 + getRandomFloat(-10, 10))
setProperty('scare.y', 0 + getRandomFloat(-10, 10))
setProperty('scare2.x', 0 + getRandomFloat(-10, 10))
setProperty('scare2.y', 0 + getRandomFloat(-10, 10))
setProperty('scare3.x', 0 + getRandomFloat(-10, 10))
setProperty('scare3.y', 0 + getRandomFloat(-10, 10))

curHealth = (getProperty('health')/2)
	setProperty('iconP1.x', getProperty('health.x') + getProperty('healthP2.width') - -150)
	curHealth = (getProperty('health')/2)
	setProperty('health._frame.frame.width', 50 + (math.lerp(10, 350, curHealth)));

end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
if not isSustainNote then
    health = getProperty('health')
    if getProperty('health') > 0.01 then
        setProperty('health', health- 0.03);
      end
    end
end

function jumpscare()
jump = getRandomInt(1,3)
   if jump == 1 then 
   runTimer('byejump', 0.2)
   setProperty('scare.alpha', 1)
   end
   if jump == 2 then
   runTimer('byejump', 0.2)
   setProperty('scare2.alpha', 1)
   end
  if jump == 3 then
   runTimer('byejump', 0.2)
   setProperty('scare3.alpha', 1)
   end
end

function onTimerCompleted(tag)
 if tag == 'byejump' then
 doTweenAlpha("jumps", 'scare', 0, 0.15)
 doTweenAlpha("jumps1", 'scare2', 0, 0.15)
 doTweenAlpha("jumps2", 'scare3', 0, 0.15)
  end
end

function onEvent(name)
if name == "Jumpscare" then
jumpscare()
end
end

function onUpdate()
if downscroll then
setProperty('icons1.y', 20)
setProperty('icons2.y', 20)
setProperty('icons11.y', 20)
setProperty('icons22.y', 60)
setProperty('health.y', 40)
setProperty('healthBase.y', -20)
end
if not downscroll then
setProperty('icons1.y', 550)
setProperty('icons2.y', 550)
setProperty('icons11.y', 550)
setProperty('icons22.y', 590)
setProperty('health.y', 560)
setProperty('healthBase.y', 500)
end
end

function math.lerp(a, b, t)
	return a + t * (b - a);
end