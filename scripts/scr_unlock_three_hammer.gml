///scr_unlock_three_hammer()

obj_main.three_hammer = true;
var unlock = instance_create(x + 16, y, obj_unlocked);
unlock.sprite_index = spr_hammer;
unlock.image_speed = 0;
unlock.image_index = sprite_get_number(spr_hammer - 1);
unlock.image_angle = 90;

