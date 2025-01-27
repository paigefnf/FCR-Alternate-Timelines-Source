function onCreate()
    makeLuaText('textNint', '', 1870, 0, 0)
    setTextBorder('textNint', 0)
    setTextAlignment('textNint', 'center')
    setTextFont('textNint', 'times.ttf')
    setTextSize('textNint', 40)
    screenCenter('textNint')
    addLuaText('textNint')
    setObjectCamera('textNint', 'camHUD')
end 

function onEvent(n,v1,v2)
    if n == 'text' then
        local Text = v1
        Text = Text:gsub(';', '\n')
        setTextString('textNint', Text)
        screenCenter('textNint')
        setTextColor('textNint', 'ffffff')
        setTextBorder('textNint',2,'000000')
    end
end