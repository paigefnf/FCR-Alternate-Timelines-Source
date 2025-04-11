local SingAnims = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}
function onCreate()
	for i = 0, getProperty('unspawnNotes.length') - 1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'gfbfNote' and not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			end
		end
	end