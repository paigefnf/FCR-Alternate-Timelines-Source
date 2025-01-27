function onCreate()
	for i = 0, getProperty('unspawnNotes.length') - 1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Ghost Note' then
setPropertyFromGroup('unspawnNotes', i, 'texture', 'noteSkins/NOTE_assets-ghost');			
setPropertyFromGroup('unspawnNotes', i, 'noteSplashData.texture', 'noteSplashes/noteSplashes-ghost');		
setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
setPropertyFromGroup("playerStrums", i, 'useRGBShader', false)			
setPropertyFromGroup("unspawnNotes", i, 'rgbShader.enabled', false)	        
setPropertyFromGroup("unspawnNotes", i, "noteSplashData.r", getColorFromHex('FF1493'))	        
setPropertyFromGroup("unspawnNotes", i, "noteSplashData.g", getColorFromHex('101010'))
setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); 
setPropertyFromGroup('unspawnNotes', i, 'mustPress', false); 
		end
	end
end