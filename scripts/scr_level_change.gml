///scr_level_change(room)

if !instance_exists(obj_level_fade_out) {
    var fade = instance_create(0, 0, obj_level_fade_out);
    fade.level = argument0;
}

