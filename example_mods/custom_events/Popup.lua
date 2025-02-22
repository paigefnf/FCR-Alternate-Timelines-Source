--Hey Stick-EXT here hi i made this :3
pops = 0
popXP = 0
xpCount = 0

local POPUSFuck = false
function onCreatePost()
setPropertyFromClass('flixel.FlxG', 'mouse.visible', true)	
end

function SmilePop()
local imageSmile = {'stages/smile/windows/DEATH', 'stages/smile/windows/DOG', 'stages/smile/windows/SARAH', 'stages/smile/windows/SMILE', 'stages/smile/windows/SPREADTHEWORD'};

   RandSmile = getRandomInt(1,5)
	makeLuaSprite('pop'..pops, imageSmile[RandSmile], getRandomInt(-100,600),getRandomInt(-100,200))
    setProperty('pop'..pops..'.alpha', 0);
    setObjectCamera('pop'..pops, 'camHUD'); 
    addLuaSprite('pop'..pops, false)
    setProperty('pop'..pops..'.scale.y', '0.5')
    setProperty('pop'..pops..'.scale.x', '0.5')
    doTweenAlpha("ohfuck"..pops, 'pop'..pops, 1, 0.2, 'linear')
    doTweenY('ohfuckYScale'..pops, 'pop'..pops..'.scale', 0.6, 0.15)
    doTweenX('ohfuckXScale'..pops, 'pop'..pops..'.scale', 0.6, 0.15)
pops = pops + 1 
end

--XP
function xppopup()
   local xpString = {'stages/smile/windows/AREYOUHAVINGFUN', 'stages/smile/windows/CHECKTHESEMOVES', 'stages/smile/windows/HISARATAYLOR', 'stages/smile/windows/INYOURROOM', 'stages/smile/windows/LOVELAUGHLOVE','stages/smile/windows/PAYATTENTION'};
   randXP = getRandomInt(1,6)
	makeLuaSprite('popupXP'..xpCount, xpString[randXP], getRandomInt(-100,600),getRandomInt(-100,200))
    setProperty('popupXP'..xpCount..'.alpha', 0);

    setObjectCamera('popupXP'..xpCount, 'camHUD'); 
    addLuaSprite('popupXP'..xpCount, false)
    setProperty('popupXP'..xpCount..'.scale.y', '0.5')
    setProperty('popupXP'..xpCount..'.scale.x', '0.5')
    doTweenAlpha("xpAlpha"..xpCount, 'popupXP'..xpCount, 1, 0.2, 'linear')
    doTweenY('xpScaleY'..xpCount, 'popupXP'..xpCount..'.scale', 0.65, 0.15)
    doTweenX('xpScaleX'..xpCount, 'popupXP'..xpCount..'.scale', 0.65, 0.15)

   xpCount = xpCount + 1
  end

function xppopup0()
for i = 0,xpCount do
setProperty('popupXP'..i..'.visible', false);
end
end

function byepopSmile()
for i = 0,pops do
setProperty('pop'..i..'.visible', false);
end
end

function onUpdate()
if mouseClicked("left") and POPUSFuck then
  pops = pops - 1
          cancelTween('ohfuck')
          cancelTween('ohfuckYScale')
          cancelTween('ohfuckXScale')

          doTweenAlpha('ha'..pops, 'pop'..pops, 0, 0.1)
          doTweenY('haYScale'..pops, 'pop'..pops..'.scale', 0.45, 0.15)
          doTweenX('haXScale'..pops, 'pop'..pops..'.scale', 0.45, 0.15)


		if getMouseX('game') >= getProperty('pop'..pops..'.x') and getMouseX('game') < getProperty('pop'..pops..'.x') + getProperty('pop'..pops..'.width') then	-- checks if where you clicked was within the object
			if getMouseY('game') >= getProperty('pop'..pops..'.y') and getMouseY('game') < getProperty('pop'..pops..'.y') + getProperty('pop'..pops..'.height') then	-- ditto but 
           end
         end
      end

  if pops == 0 then
  POPUSFuck = false
   end
end


function onEvent(name,v1,v2)

if name == "Popup" then
if v1 == 'hidePopSmile' then
byepopSmile()
end
if v1 == '' then
POPUSFuck = true
SmilePop()
end
if v1 == 'xp' then
xppopup()
end
if v1 == 'xp' and v2 == '0' then
xppopup0()
end
end
end