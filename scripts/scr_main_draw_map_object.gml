///scr_main_draw_map_object(x, y)

draw_circle(
    obj_main.mini_map_margin + clamp(
        argument0 / room_width * obj_main.mini_map_size,
        0,
        obj_main.mini_map_size),
    obj_main.mini_map_margin + clamp(
        argument1 / room_height * obj_main.mini_map_size,
        0,
        obj_main.mini_map_size),
    obj_main.map_object_size,
    false);

