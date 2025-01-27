--works pretty good to get the middle
--can be a bit buggy (use offset[value2] for that)
--Made by Held_der_Zeit

-- luaDebugMode = false

local isBoth = false --if the CAM shows at both

local midOffX = 0
local midOffY = 0

function onCreatePost()
    zeroBfOffX = getMidpointX("boyfriend")
    zeroBfOffY = getMidpointY("boyfriend")
    zeroDadOffX = getMidpointX("dad")
    zeroDadOffY = getMidpointY("dad")

    stageZoom = getProperty("defaultCamZoom")

    middleMathX = (zeroBfOffX<zeroDadOffX and zeroBfOffX or zeroDadOffX) + math.abs(zeroBfOffX - zeroDadOffX)/2
    middleMathY = (zeroBfOffY<zeroDadOffY and zeroBfOffY or zeroDadOffY) + math.abs(zeroBfOffY - zeroDadOffY)/2

    -- if you want to add in compat for screen moving with notes (not recommended) you can use (middleMathX, middleMathY) as the center point

    offsetFix()
end

function onEvent(name, value1, value2, strumTime)
    if name == 'Duet Cam' then
        --debugPrint("TIME TO SHINE", "FFFF00")
        --height offset because buggy fix
        -- debugPrint("V2: "..value2)

        -- debugPrint("middleX: "..middleMathX)
        -- debugPrint("midOffX: "..midOffX)

        midOffX = 0
        midOffY = 0

        if value2 ~= nil then
            offsetPos = stringSplit(value2, ",")

            if tonumber(stringSplit(value2, ",")[1]) ~= nil then
                midOffX = tonumber(offsetPos[1])
                midOffY = tonumber(offsetPos[2])
            end
        end

        offsetFix()

        -- debugPrint("middleX: "..middleMathX)
        -- debugPrint("midOffX: "..midOffX)

        isBoth = not isBoth
        setProperty("isCameraOnForcedPos", isBoth)

        if isBoth then
            setProperty("camFollow.x", middleMathX + midOffX)
            setProperty("camFollow.y", middleMathY + midOffY)

            --custom camzoom (for when chars are further away)
            if tonumber(value1) ~= nil then
                setProperty("defaultCamZoom", tonumber(value1))
            else
                setProperty("defaultCamZoom", stageZoom)
            end

        else
            setProperty("defaultCamZoom", stageZoom)
            cameraSetTarget(mustHitSection and "boyfriend" or "dad")
        end

    -- elseif name == "Change Character" then
    --     --hopefully compat for char changes
    --     if value1 ~= "gf" then
    --         debugPrint("CHARCTER EVENT: ".. value1, "FF00FF")
    --         offsetFix()

    --         if isBoth then
    --             setProperty("camFollow.x", middleMathX)
    --             setProperty("camFollow.y", middleMathY)
    --         end
    --     end
    end
end

-- Change Character Compat
function offsetFix()
    --debugPrint("FIXING...")
    zeroBfOffX = getMidpointX("boyfriend")
    zeroBfOffY = getMidpointY("boyfriend")
    zeroDadOffX = getMidpointX("dad")
    zeroDadOffY = getMidpointY("dad")

    BfOffX = zeroBfOffX + getProperty("boyfriend.positionArray[0]")
    BfOffY = zeroBfOffY - getProperty("boyfriend.positionArray[1]")
    DadOffX = zeroDadOffX + getProperty("dad.positionArray[0]")
    DadOffY = zeroDadOffY - getProperty("dad.positionArray[1]")

    middleMathX = (BfOffX<DadOffX and BfOffX or DadOffX) + math.abs(BfOffX - DadOffX)/2
    middleMathY = (BfOffY<DadOffY and BfOffY or DadOffY) + math.abs(BfOffY - DadOffY)/2

    if luaDebugMode then
        -- debugPrint("BFX - "..getProperty("boyfriend.positionArray[0]"))
        -- debugPrint("BFY - "..getProperty("boyfriend.positionArray[1]"))
        -- debugPrint("DADX - "..getProperty("dad.positionArray[0]"))
        -- debugPrint("DADY - "..getProperty("dad.positionArray[1]"))

        makeLuaSprite("BOYMID", "", zeroBfOffX, zeroBfOffY)
        makeGraphic("BOYMID", 20, 20, "0000FF")
        addLuaSprite("BOYMID", true)

        makeLuaSprite("DADMID", "", zeroDadOffX, zeroDadOffY)
        makeGraphic("DADMID", 20, 20, "880088")
        addLuaSprite("DADMID", true)

        makeLuaSprite("MID", "", (zeroBfOffX<zeroDadOffX and zeroBfOffX or zeroDadOffX) + math.abs(zeroBfOffX - zeroDadOffX)/2, (zeroBfOffY<zeroDadOffY and zeroBfOffY or zeroDadOffY) + math.abs(zeroBfOffY - zeroDadOffY)/2)
        makeGraphic("MID", 20, 20, "00FF00")
        addLuaSprite("MID", true)

        makeLuaSprite("BOYFIX", "", BfOffX, BfOffY)
        makeGraphic("BOYFIX", 10, 10, "5555FF")
        addLuaSprite("BOYFIX", true)

        makeLuaSprite("DADFIX", "", DadOffX, DadOffY)
        makeGraphic("DADFIX", 10, 10, "FF55FF")
        addLuaSprite("DADFIX", true)

        makeLuaSprite("MIDFIX", "", middleMathX, middleMathY)
        makeGraphic("MIDFIX", 10, 10, "FF0000")
        addLuaSprite("MIDFIX", true)

        debugPrint("CHANGED")

        --setProperty("isCameraOnForcedPos", true)
        --setProperty("camFollow.x", BfOffX)
        --setProperty("camFollow.y", BfOffY)
    end

    --debugPrint("FIXED")
end