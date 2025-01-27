function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'GF Duet' then --Check if the note on the chart is a Bullet Note
			--setPropertyFromGroup('unspawnNotes', i, 'texture', 'notetexture'); --Change notetexture
			--setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			--setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			--setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);


			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'mustPress', true); --Miss has penalties
			end
		end
	end
end
function opponentNoteHit(id,dir,type,sus)
	if type == 'Duet Note' then
		characterPlayAnim('gf', getProperty('singAnimations')[math.abs(dir)+1], true)
		setProperty('gf.holdTimer', 0)
	end
end
function goodNoteHit(id,dir,type,sus)
	if type == 'Duet Note' then
		characterPlayAnim('gf', getProperty('singAnimations')[math.abs(dir)+1], true)
		setProperty('gf.holdTimer', 0)
	end
end
