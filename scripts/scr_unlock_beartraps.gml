///scr_unlock_beartraps()

obj_main.has_beartraps = true;
var unlock = instance_create(x, y, obj_unlocked);
unlock.sprite_index = spr_bear_trap;

