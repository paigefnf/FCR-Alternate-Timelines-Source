function onCreate()
makeLuaSprite('bg','stage_assets/bedroom/bg', -880, -120);
scaleObject('bg', 1.3, 1.3)
setLuaSpriteScrollFactor('bg', 0.9, 0.9)   
makeAnimatedLuaSprite('window', 'stage_assets/bedroom/window', -150, -50)
scaleObject('window', 1.2, 1.2)
addAnimationByPrefix('window', 'window', 'window', 24, true)
setLuaSpriteScrollFactor('window', 0.9, 0.9)
makeLuaSprite('drawer','stage_assets/bedroom/drawer', 660, 430);
scaleObject('drawer',1.1,1.1)
makeLuaSprite('bed','stage_assets/bedroom/bed', 1130, 360);
scaleObject('bed',1.2,1.2)
makeLuaSprite('overlay', 'stage_assets/bedroom/overlay3', -550, -250);
scaleObject('overlay',0.8,0.8)
setObjectCamera('overlay', 'hud');
addLuaSprite('overlay', false);	
addLuaSprite('bg', false);
addLuaSprite('window', false);
addLuaSprite('drawer', false);
addLuaSprite('bed', false);
end
local SingAnims = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}
function opponentNoteHit()
characterPlayAnim('dad', SingAnims[noteData+1], true);
setProperty('dad.specialAnim', true);
setProperty('dad.holdTimer', 0);
end
