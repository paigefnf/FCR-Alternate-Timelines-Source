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
	if name == 'moveOpponent' then
        local tableeee=mysplit(value1,", "); -- Splits value1 into a table

        X1 = tableeee[1]
        Y1 = tableeee[2]
        time1 = tonumber(value2) or 0.5

        debugPrint("It will move to: ", X1, ",", Y1)
        debugPrint("In ", time1, " seconds")

        opponent = 'dad'

        doTweenX('DadX', opponent, X1, time1, 'expoInOut')
        doTweenY('DadY', opponent, Y1, time1, 'expoInOut')
    end
end