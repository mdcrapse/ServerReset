///scr_menu_toggle_music()

if obj_main.music_on {
    scr_music_change(-1);
    obj_main.music_on = false;
    text = "music off";
} else {
    obj_main.music_on = true;
    scr_music_change(obj_main.song);
    text = "music on";
}

