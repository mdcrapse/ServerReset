///scr_unlock_huge_mace()

obj_main.huge_mace = true;
var unlock = instance_create(x, y, obj_unlocked);
unlock.sprite_index = spr_mace;

// make existing maces larger
with obj_player_mace {
    image_xscale = 2;
    image_yscale = 2;
}

