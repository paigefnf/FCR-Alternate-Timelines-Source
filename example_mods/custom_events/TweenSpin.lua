function onEvent(n,v1,v2)
	if n == "TweenSpin" then
		runTimer('tweenstop',0.5);
		-- bf notespin
		noteTweenAngle('A',4 , 360 , 0.5, quintOut)
		noteTweenAngle('B',5 , 360 , 0.5, quintOut)
		noteTweenAngle('C',6 , 360 , 0.5, quintOut)
		noteTweenAngle('D',7 , 360 , 0.5, quintOut)

		-- oppt notespin
		noteTweenAngle('E',0 , 360 , 0.5, quintOut)
		noteTweenAngle('F',1 , 360 , 0.5, quintOut)
		noteTweenAngle('G',2 , 360 , 0.5, quintOut)
		noteTweenAngle('H',3 , 360 , 0.5, quintOut)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'tweenstop' then
		noteTweenAngle('A',4 , 0 , 0.01, circInOut)
		noteTweenAngle('B',5 , 0 , 0.01, circInOut)
		noteTweenAngle('C',6 , 0 , 0.01, circInOut)
		noteTweenAngle('D',7 , 0 , 0.01, circInOut)

		-- oppt notespin
		noteTweenAngle('E',0 , 0 , 0.01, circInOut)
		noteTweenAngle('F',1 , 0 , 0.01, circInOut)
		noteTweenAngle('G',2 , 0 , 0.01, circInOut)
		noteTweenAngle('H',3 , 0 , 0.01, circInOut)
    end
end
