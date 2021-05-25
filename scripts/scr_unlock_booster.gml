///scr_unlock_booster()

obj_main.has_booster = true;
var unlock = instance_create(x, y, obj_unlocked);
unlock.sprite_index = spr_booster;

