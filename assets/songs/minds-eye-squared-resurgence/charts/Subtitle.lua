function onCreatePost()
makeLuaText('lyric', '', screenWidth, 0, 545)
addLuaText('lyric', true)
setTextSize('lyric', 28)
setTextBorder("lyric", 0.5, '000000')
setObjectCamera('lyric', 'hud')
setTextFont('lyric', 'StepRightUp.ttf')
setObjectOrder('lyric', getObjectOrder('lyric') + 10);
end

function onStepHit()
if curStep == 991 then
setTextString('lyric', 'Do you really think')
end
if curStep == 1019 then
setTextString('lyric', 'you have the audacity')
end
if curStep == 1046 then
setTextString('lyric', 'to try and delete')
end
if curStep == 1069 then
setTextString('lyric', 'a living organism?')
end  
if curStep == 1095 then
setTextString('lyric', 'Your method of containing me')
end
if curStep == 1123 then
setTextString('lyric', 'is flimsy and half-hearted')
end
if curStep == 1175 then
setTextString('lyric', '')
end
end