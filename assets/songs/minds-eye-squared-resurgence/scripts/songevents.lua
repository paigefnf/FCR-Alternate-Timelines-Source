hideDog = false
ZoomDog = true
local imagePath = 'stage_assets/smile/'

Monitor = {
    width = getPropertyFromClass("flixel.FlxG", "stage.fullScreenWidth"),
    height = getPropertyFromClass("flixel.FlxG", "stage.fullScreenHeight")
}

local windowCount = 1
local windows = {'DEATH', 'DOG', 'SARAH', 'SMILE', 'SPREADTHEWORD'};
local windowString = '';

local windowChecks = {}
local windowHealth = {}

local xpCount = 1
local xpWins = {'AREYOUHAVINGFUN', 'CHECKTHESEMOVES', 'HISARATAYLOR', 'INYOURROOM', 'LOVELAUGHLOVE','PAYATTENTION'};
local xpString = '';

local xpChecks = {}
local xpHealth = {}


function window_center()
    return (Monitor.width - 1280) / 2, (Monitor.height - 720) / 2
end
function onCreate() 
    setProperty('skipCountdown',true)
    --for i = 1,#windows do
    --    precacheImage('stage_assets/smile/windows/'..windows[i]);
    --end
    addHaxeLibrary('Lib', 'openfl');

    makeLuaSprite("black",'',-2000,-1000);
    makeGraphic("black",4000,4000,'000000')
    setObjectCamera("black", 'camHUD')
    addLuaSprite("black",false)
    setProperty('uiGroup.alpha',0)
    
    setProperty('botplayTxt.alpha',0)
    for i = 0,3 do
        setPropertyFromGroup('playerStrums', i, 'alpha', 0)
    end


end

function onCreatePost()
  setProperty('health.alpha',0);
    setProperty('healthBase.alpha',0);
    setProperty('icons1.alpha',0);
    setProperty('icons2.alpha',0);
	addHaxeLibrary('FlxG','flixel');
    --c_x, c_y = window_center()
    --WindowFollow = {x = c_x, y = c_y}
    
    --setPropertyFromClass("lime.app.Application", "current.window.width", 1280)
    --setPropertyFromClass("lime.app.Application", "current.window.height", 720)
end

function onSongStart()
    for i = 0,3 do
        setPropertyFromGroup('playerStrums', i, 'alpha', 0)
  if not middlescroll then
		setPropertyFromGroup('playerStrums', 0, 'x', defaultOpponentStrumX0)
		setPropertyFromGroup('playerStrums', 1, 'x', defaultOpponentStrumX1)
		setPropertyFromGroup('playerStrums', 2, 'x', defaultOpponentStrumX2)
		setPropertyFromGroup('playerStrums', 3, 'x', defaultOpponentStrumX3)
   end
		setPropertyFromGroup('opponentStrums', 0, 'alpha', 0)
		setPropertyFromGroup('opponentStrums', 1, 'alpha', 0)
		setPropertyFromGroup('opponentStrums', 2, 'alpha', 0)
		setPropertyFromGroup('opponentStrums', 3, 'alpha', 0)
	end
end

--function lerp(a, b, c)return a + c * (b - a)end
--function bound(a, b, c)return a < b and b or a > c and c or a end

function onUpdate(elapsed)
    --cam zooms depending on which character

    if mouseClicked('left') then
		for i = 1,windowCount do
			local popupX = getProperty('popup'..i..'.x'); 
            local popupY = getProperty('popup'..i..'.y');
            local popupWidth = getProperty('popup'..i..'.width');
            local popupHeight = getProperty('popup'..i..'.height');
			local mouseX = getMouseX('hud');
            local mouseY = getMouseY('hud');

			if (mouseX - popupX) >= 0 and (mouseX - popupX) <= popupWidth and (mouseY - popupY) >= 0 and (mouseY - popupY) <= popupHeight and windowChecks[i] == true then
                doTweenX("popupCloseX"..i, 'popup'..i..'.scale', 0.95, 0.1, 'linear')
                doTweenY("popupCloseY"..i, 'popup'..i..'.scale', 0.95, 0.1, 'linear')
                doTweenAlpha("popupCloseAlpha"..i, 'popup'..i, 0, 0.1, 'linear')
                windowChecks[i] = false
                setProperty('lossMultiplier', getProperty("lossMultiplier") - windowHealth[i]);
			end
		end

        for i = 1,xpCount do
			local xpX = getProperty('popupXP'..i..'.x'); 
            local xpY = getProperty('popupXP'..i..'.y');
            local xpWidth = getProperty('popupXP'..i..'.width');
            local xpHeight = getProperty('popupXP'..i..'.height');
			local mouseX = getMouseX('hud');
            local mouseY = getMouseY('hud');

			if (mouseX - xpX) >= 0 and (mouseX - xpX) <= xpWidth and (mouseY - xpY) >= 0 and (mouseY - xpY) <= xpHeight and xpChecks[i] == true then
                xpChecks[i] = false
                removeLuaSprite('popupXP'..i, false)
                setProperty('lossMultiplier', getProperty("lossMultiplier") - xpHealth[i]);
			end
		end
	end
    if ZoomDog then
        if mustHitSection then
            setProperty('defaultCamZoom',  0.750)
        else
            setProperty('defaultCamZoom', 1)
        end
    end
end

function onUpdatePost()
if hideDog then
setProperty('dad.visible', false)
end
end

local scrambleCount = 1
local thing = {'DEATH', 'DOG', 'SARAH', 'SMILE', 'SPREADTHEWORD'};
local scrambleProperties = {
    {4,300,-300,250,-550},
    {2,-60,0,-460,0},
    {1,-50,350,-350,370},
    {3,700,300,1000,350},
    {5,200,450,150,700},
    {1,700,-100,960,-300},
    {4,800,250,1000,325},
    {3,200,-300,0,-500},
    {2,300,530,400,750}
}
--local thingString = '';

function onEvent(eventName, value1, value2)
    if eventName == '' then
        if value1 == 'polaroid' then
            doTweenAlpha("polaroid1", "polaroid", 1, 22.3, 'linear')
            doTweenX("polaroidX", "polaroid.scale", 1, 22.6, 'linear')
            doTweenY("polaroidY", "polaroid.scale", 1, 22.6, 'linear')
        end
        if value1 == 'catchthisfade' then
            for i = 4,7 do
                noteTweenAlpha('notes'..i, i, 1, 11.25, 'linear')
            end
            doTweenAlpha("huds", "uiGroup", 1, 11.20, 'linear')
            doTweenAlpha("p1fade", "health", 1, 11.05, 'linear')

            doTweenAlpha("framefade", "healthBase", 1, 11.05, 'linear')
            doTweenAlpha("p1icon", "icons1", 1, 11.05, 'linear')
            doTweenAlpha("p2icon", "icons2", 1, 11.05, 'linear')
        end
        if value1 == 'demon' then
            setProperty('polaroid.alpha',0.00001)
            setProperty('uiGroup.alpha',0)
            setProperty('health.alpha',0)

            setProperty('healthBase.alpha',0)
            setProperty('icons1.alpha',0)
            setProperty('icons2.alpha',0)
            for i = 0,3 do
                setPropertyFromGroup('playerStrums', i, 'visible', false)
            end
        end
        if value1 == 'transition' then
            removeLuaSprite('polaroid',true)
            setProperty('black.visible',false)
            setProperty('uiGroup.alpha',1)
            setProperty('health.alpha',1)

            setProperty('healthBase.alpha',1)
            setProperty('icons1.alpha',1)
            setProperty('icons2.alpha',1)
            for i = 0,3 do
                setPropertyFromGroup('playerStrums', i, 'visible', true)
            end
            cameraFlash("camHUD", '000000', 1, true)
        end

        if value1 == '0' then
            --c_y = 1080
            setProperty('uiGroup.alpha',0)
            for i = 0,3 do
                setPropertyFromGroup('playerStrums', i, 'alpha', 0)
            end
            ZoomDog = false
            setProperty('black.visible',true)
            setProperty('boyfriend.visible', false)
            setProperty('isCameraOnForcedPos', true)
            setProperty("camFollow.x", 1550)
            setProperty("camFollow.y", 450)
            setProperty('camGame.zoom', 0.6)
            setProperty('defaultCamZoom', 0.6)
             setProperty('bartop.visible', false)
            setProperty('barbot.visible', false)
        end

        if value1 == '1' then
            hideDog = true
            setProperty('dad.visible', false)
            setProperty('text.visible', true)
            setProperty('wallpaper.visible', true)
            setProperty('windBar.visible', true)
            setProperty('LATE.visible', true)
            setProperty('SPREAD.visible', true)
            doTweenAlpha("blackin", "black", 0, 0.5, 'cubeInOut')  

        end

        if value1 == 'suspensefirst' then
            setProperty('boyfriend.visible', false)
            doTweenZoom('suspense', 'camGame', 0.73, 1, 'cubeInOut')
        end

        if value1 == 'slamfirst' then 
            hideDog = false
            doTweenZoom('SLAM', 'camGame', 0.6,  0.5, 'elasticOut')
            removeLuaSprite("black", true)


            doTweenAlpha("hudli", "uiGroup", 1, 0.5, 'cubeInOut')
            for i = 4,7 do
                noteTweenAlpha('notesli'..i, i, 1, 0.5, 'linear')
            end
        end

        if value1 == '6' then
        setProperty('LATE.visible', false)
        setProperty('SPREAD.visible', false)
        setProperty('youwin.alpha', 1)
       end

        if value1 == '7' then
        doTweenAlpha("oh", "youfuck", 1, 1.5, 'cubeInOut')
       end

        if value1 == '2' then
          setProperty('icons22.visible', true)
          setProperty('icons2.visible', false)
          setProperty('icons11.visible', true)
          setProperty('icons1.visible', false)
          setCharacterX('dad', 850)
            setCharacterY('dad', 100)
            setCharacterX('boyfriend', 1800)
            setCharacterY('boyfriend', 150)
          setProperty('bluescreen.visible', true)
            for i = 1,windowCount do
                if windowChecks[i] == true then
                    windowChecks[i] = false
                    removeLuaSprite('popup'..i, false)
                    setProperty('lossMultiplier', getProperty("lossMultiplier") - windowHealth[i]);
                end
            end

            --setProperty("camUI.zoom", 0.467)

        end
        
        if value1 == '3' then

            setProperty('text.visible', false)
            setProperty('wallpaperxp.visible', true)
            setProperty('windBar.visible', false)
            setProperty('windBarxp.visible', true)
            setProperty('bluescreen.visible', false)
         end
        if value1 == 'suspensefinal' then
     
             
            doTweenZoom('suspense', 'camGame', 0.73, 1, 'cubeInOut')

        end

         if value1 == '4' then
         setProperty('dickdog2.visible', true)
         setProperty('dickdog.visible', true)
         end

        if value1 == '5' then
           hideDog = false
            doTweenZoom('SLAM', 'camGame', 0.6, 0.5, 'elasticOut')
            --setProperty("camUI.zoom", 0.467)
            setObjectCamera('boyfriendGroup', 'camGame')
    
            for i = 1,windowCount do
                if windowChecks[i] == true then
                    windowChecks[i] = false
                    removeLuaSprite('popup'..i, false)
                    setProperty('lossMultiplier', getProperty("lossMultiplier") - windowHealth[i]);
                end
            end
    
            for i = 1,xpCount do
                if xpChecks[i] == true then
                    xpChecks[i] = false
                    removeLuaSprite('popupXP'..i, false)
                    setProperty('lossMultiplier', getProperty("lossMultiplier") - xpHealth[i]);
                end
            end
        end
    end
	if eventName == 'Popup' then    
        if value1 == 'scramble' then
            scrambleCount = 1
            runTimer('scrambling', value2,scrambleProperties[#scrambleProperties]);
        elseif value1 == 'fatdog' then
            expandPopups();


        end
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'scrambling' then
        --thingString = thing[getRandomInt(1, 5)];
        makeLuaSprite('scramblePopup'..scrambleCount, 'stage_assets/smile/windows/'..thing[scrambleProperties[scrambleCount][1]], scrambleProperties[scrambleCount][2], scrambleProperties[scrambleCount][3])
        setProperty('scramblePopup'..scrambleCount..'.alpha', 0);
        setObjectCamera('scramblePopup'..scrambleCount, 'camHUD'); 
        addLuaSprite('scramblePopup'..scrambleCount, false)
        scaleObject('scramblePopup'..scrambleCount, 0.52, 0.52,false)
    
        doTweenX("scrambleScaleX"..scrambleCount, 'scramblePopup'..scrambleCount..'.scale', 0.65, 0.1, 'linear')
        doTweenY("scrambleScaleY"..scrambleCount, 'scramblePopup'..scrambleCount..'.scale', 0.65, 0.1, 'linear')
        doTweenAlpha("scrambleAlpha"..scrambleCount, 'scramblePopup'..scrambleCount, 1, 0.1, 'linear')
        
        scrambleCount = scrambleCount + 1
    end
    
    if tag == 'flicker' then
        for i = 1,scrambleCount do
            if getProperty('scramblePopup'..i..'.visible') == true then
                setProperty('scramblePopup'..i..'.visible', false);
            else
                setProperty('scramblePopup'..i..'.visible', true);
            end

            if loopsLeft == 0 then
                for i = 1,scrambleCount do
                    removeLuaSprite('scramblePopup'..i, false)
                end
            end
        end
    end
end

--Remind me to translate this to source - Breezy

function onTweenCompleted(tag)
    if tag == 'scrambleX1' then
        runTimer('flicker', 0.05, 7)
    end

    for i = 1,windowCount do
        if tag == 'popupCloseAlpha'..i then
            removeLuaSprite('popup'..i, false)
        end
    end
end

function expandPopups()
    for i = 1,scrambleCount do
        doTweenX("scrambleX"..i, 'scramblePopup'..i, scrambleProperties[i][4], 0.25, 'backOut')
        doTweenY("scrambleY"..i, 'scramblePopup'..i, scrambleProperties[i][5], 0.25, 'backOut')
    end
end

function popup(value)
    windowString = windows[getRandomInt(1, 5)];
	makeLuaSprite('popup'..windowCount, 'stage_assets/smile/windows/'..windowString, getRandomInt(0, 1350), getRandomInt(-120, 620))
    setProperty('popup'..windowCount..'.alpha', 0);
    setSpriteOffset('popup'..windowCount,getProperty('popup'..windowCount..'.frameWidth') - 45,0)
    setObjectCamera('popup'..windowCount, 'camHUD'); 
    addLuaSprite('popup'..windowCount, true)
    setSpriteSize('popup'..windowCount,45,29);
    scaleObject('popup'..windowCount, 0.95, 0.95,false)

    doTweenX("popupScaleX"..windowCount, 'popup'..windowCount..'.scale', 1, 0.1, 'linear')
    doTweenY("popupScaleY"..windowCount, 'popup'..windowCount..'.scale', 1, 0.1, 'linear')
    doTweenAlpha("popupAlpha"..windowCount, 'popup'..windowCount, 1, 0.1, 'linear')

    windowChecks[windowCount] = true
    windowHealth[windowCount] = value;
    setProperty('lossMultiplier', getProperty("lossMultiplier") + windowHealth[windowCount]);
    windowCount = windowCount + 1
end
