local SingAnims = {'dodgeLEFT', 'dodgeDOWN', 'dodgeUP', 'dodgeRIGHT'} --Sing Animation Names
function onCreate()
	for i = 0, getProperty('unspawnNotes.length') - 1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Bullet Note' then
setPropertyFromGroup('unspawnNotes', i, 'texture', 'noteSkins/NOTE_assets-bullet');			
setPropertyFromGroup('unspawnNotes', i, 'noteSplashData.texture', 'noteSplashes/noteSplashes-electric');		
setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
setPropertyFromGroup("playerStrums", i, 'useRGBShader', false)			
setPropertyFromGroup("unspawnNotes", i, 'rgbShader.enabled', false)	        
setPropertyFromGroup("unspawnNotes", i, "noteSplashData.r", getColorFromHex('FF1493'))	        
setPropertyFromGroup("unspawnNotes", i, "noteSplashData.g", getColorFromHex('101010'))
setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); 
if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then setPropertyFromGroup('unspawnNotes', i, 'mustPress', true); 
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'Bullet Note' then
triggerEvent('Add Camera Zoom','0.01', '0.01')
triggerEvent('Play Animation','shoot', 'dad')
characterPlayAnim('boyfriend', SingAnims[noteData+1], true);
setProperty('boyfriend.specialAnim', true);
setProperty('boyfriend.holdTimer', 0);
end
end
function noteMiss(id, noteData, noteType, isSustainNote)
if noteType == 'Bullet Note' then
triggerEvent('Add Camera Zoom','0.01', '0.01')
triggerEvent('Play Animation','shoot', 'dad')
characterPlayAnim('boyfriend', 'hurt', true);
setProperty('boyfriend.specialAnim', true);
setProperty('boyfriend.holdTimer', 0);
end
end