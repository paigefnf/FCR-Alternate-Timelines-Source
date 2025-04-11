function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Fallback Bullet Note' then --Check if the note on the chart is a Bullet Note
                 setPropertyFromGroup('unspawnNotes', i, 'texture', 'noteSkins/NOTE_assets-bullet'); --Change texture
                 setPropertyFromGroup('unspawnNotes', i, 'noteSplashData.texture', 'noteSplashes/noteSplashes-electric'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); -- make it so original character doesn't sing these notes
setPropertyFromGroup("playerStrums", i, 'useRGBShader', false)
			setPropertyFromGroup("unspawnNotes", i, 'rgbShader.enabled', false)

	        setPropertyFromGroup("unspawnNotes", i, "noteSplashData.r", getColorFromHex('FF1493'))
	        setPropertyFromGroup("unspawnNotes", i, "noteSplashData.g", getColorFromHex('101010'))
setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); 
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'mustPress', true); --Miss has penalties
			end
		end
	end
end
function onCreatePost()
end
function noteMiss(id,dir,type,sus)
if type == 'Fallback Bullet Note' then
triggerEvent('Add Camera Zoom','0.01', '0.01')
setProperty('health',getProperty('health') - 0.4)
end
end
function goodNoteHit(id,dir,type,sus)
if type == 'Fallback Bullet Note' then
triggerEvent('Add Camera Zoom','0.01', '0.01')
triggerEvent('Play Animation','shoot','gf')
end
end
