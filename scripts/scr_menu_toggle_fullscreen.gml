///scr_menu_toggle_fullscreen()

if window_get_fullscreen() {
    window_set_fullscreen(false);
    text = "fullscreen off";
} else {
    window_set_fullscreen(true);
    text = "fullscreen on";
}

