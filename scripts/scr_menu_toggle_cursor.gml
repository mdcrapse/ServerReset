///scr_menu_toggle_cursor()

if obj_main.sys_cursor {
    cursor_sprite = spr_cursor;
    window_set_cursor(cr_none);
    obj_main.sys_cursor = false;
    text = "cursor on";
} else {
    cursor_sprite = -1;
    window_set_cursor(cr_default);
    obj_main.sys_cursor = true;
    text = "cursor off";
}

