local SingAnims = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}
function onCreate()
	for i = 0, getProperty('unspawnNotes.length') - 1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'dadgfNote' then
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true)
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			end
		end
	end
end
function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'dadgfNote' then
        characterPlayAnim('gf', SingAnims[noteData+1], true);
		setProperty('gf.specialAnim', true);
		setProperty('gf.holdTimer', 4);
	end
end