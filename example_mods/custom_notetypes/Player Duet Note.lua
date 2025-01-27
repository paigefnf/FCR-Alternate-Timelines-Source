local SingAnims = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'} --Sing Animation Names

function onCreate()
	for i = 0, getProperty('unspawnNotes.length') - 1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Player Duet Note' then
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Player Duet Note' then
        characterPlayAnim('gf', SingAnims[noteData+1], true);
		setProperty('gf.specialAnim', true);
		setProperty('gf.holdTimer', 0);
		characterPlayAnim('boyfriend', SingAnims[noteData+1], true);
		setProperty('boyfriend.specialAnim', true);
		setProperty('boyfriend.holdTimer', 0);
	end
end