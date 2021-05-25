///scr_destroy_and_drop_fire_ext()

// villagers don't drop stuff in level 3 because it causes problems with the boss.
if !instance_exists(obj_villager) == 1 && room != rm_lvl_3 {
    instance_create(x, y, obj_fire_ext);
}
instance_destroy();

