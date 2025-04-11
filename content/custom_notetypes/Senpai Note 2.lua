function onCreate()
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Senpai Note 2' then
setPropertyFromGroup('unspawnNotes', i, 'texture', 'noteSkins/NOTE_assets-senpai');
if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
end
function goodNoteHit(id, i, noteType, isSustainNote)
if noteType == 'Senpai Note 2' then
playSound('glitchNoise', 1);
end
end