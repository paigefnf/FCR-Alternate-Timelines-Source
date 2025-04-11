function mysplit (inputstr, sep)
    if sep == nil then
        sep = "%s";
    end
    local t={};
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        table.insert(t, str);
    end
    return t;
end


function onEvent(name, value1, value2)
	if name == 'moveObject4' then
        local tableee=mysplit(value1,", "); -- Splits value1 into a table

        X = tonumber(tableee[1])
        Y = tonumber(tableee[2])
        time = tonumber(tableee[3])

        object = value2

        -- debugPrint("The object to move is: ", object)
        -- debugPrint("It will move to: ", X, ",", Y)
        -- debugPrint("In ", time, " seconds")

        doTweenX('ObjectX4', object, X, time, 'expoInOut')
        doTweenY('ObjectY4', object, Y, time, 'expoInOut')
    end
end