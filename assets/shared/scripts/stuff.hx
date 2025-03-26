// Some useful stuff for lua
// By: drew
import backend.MusicBeatState;
import backend.StageData;
import states.LoadingState;
import backend.Song;
import backend.WeekData;

createGlobalCallback('getClientPrefs', function(name:String) {
    // Read client preferences in lua, such as if middlescroll/downscroll is enabled, enemy notes and such.
	return Reflect.field(ClientPrefs.data, name);
});

createGlobalCallback("loadAnySong", function(song:String, ?difficulty:String="") {
    // Loads any song from assets folder
    try {
        var folder = song;
        if(difficulty != null && difficulty != "") song = song + "-" + difficulty.toLowerCase();
        PlayState.SONG = Song.loadFromJson(song.toLowerCase(), folder.toLowerCase());
        MusicBeatState.resetState();
        StageData.loadDirectory(PlayState.SONG);
        LoadingState.loadAndSwitchState(new PlayState());
        
    } catch(e) {
        debugPrint(e);
    }
});
