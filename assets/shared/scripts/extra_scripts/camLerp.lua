local camSpeed = nil
local camLerp = 0

function onEvent(name,v1,v2)
    if name == 'Set Cam Lerp' then
        local function tableSplit(text,argument)
            local array = {}
            local founded = false
            local pos = 0
            repeat
                founded = false
                local split,_ = string.find(text,argument,pos,true)
                local number = string.sub(text,pos)
                if split then
                    number = string.sub(text,pos,split-1)
                    founded = true
                    pos = _+1
                end
        
                table.insert(array,number)
            until founded == false
            if array == {} then
                array = {text}
            end
            return array
        end
        local v1split = tableSplit(v1,',')
        local target = v1split[1]
        local speed = v1split[2]
        local lerp =  v1split[3]
        if speed == 'nil' then
            speed = nil
        else
            speed = tonumber(speed)
        end
        if target == 'nil' then
            target = nil
        end
        setLerp(target,speed,lerp)
    end
end

--[[local function lerp(a,b,c)
    return a + (b-a)*c
end]]--
function onUpdatePost(el)
     --setProperty('cameraSpeed',lerp(getProperty('cameraSpeed'),camSpeed,camLerp))
    setProperty('cameraSpeed',getProperty('cameraSpeed') + ((camSpeed - getProperty('cameraSpeed'))*(camLerp*50*el)))
end

function setLerp(start,target,speed)
    if target ~= nil then
        camSpeed = target
    else
        if camSpeed == nil then
            camSpeed = getProperty('cameraSpeed')
        end
    end
    if start ~= nil then
        setProperty('cameraSpeed',start)
    end
    if speed ~= nil then
        camLerp = speed
    else
        if camLerp == 0 then
            camLerp = 0.01
        end
    end
end