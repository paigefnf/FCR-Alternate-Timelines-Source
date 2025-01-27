local SingAnims = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'} 
function onCreate()
	for i = 0, getProperty('unspawnNotes.length') - 1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'bfdadNote' then
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
end
function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'bfdadNote' then
        characterPlayAnim('gf', SingAnims[noteData+1], true);
		setProperty('gf.specialAnim', true);
		setProperty('gf.holdTimer', 0);
		characterPlayAnim('dad', SingAnims[noteData+1], true);
		setProperty('dad.specialAnim', true);
		setProperty('dad.holdTimer', 0);
	end
end