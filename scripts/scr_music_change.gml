///scr_music_change(soundid)
/// Changes the song to the specified song.
/// Plays nothing if argument0 is -1.
/// Due to numerous sound issues, does nothing on browser platforms.

if os_browser != browser_not_a_browser {
    exit;
}

// stop previus song
if obj_main.song_id != -1 {
    audio_stop_sound(obj_main.song_id);
    obj_main.song_id = -1;
}

// play new song
if argument0 != -1 {
    obj_main.song = argument0;
    if obj_main.music_on {
        obj_main.song_id = audio_play_sound(argument0, 100, true);
    }
}

