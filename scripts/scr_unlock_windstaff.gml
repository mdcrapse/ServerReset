///scr_unlock_windstaff()

obj_main.has_windstaff = true;
var unlock = instance_create(x + 16, y, obj_unlocked);
unlock.sprite_index = spr_windstaff;
unlock.image_speed = 0.5;
unlock.image_angle = 90;

