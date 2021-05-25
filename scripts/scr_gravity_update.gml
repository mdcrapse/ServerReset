///scr_gravity_update()

if !on_ground {
    height = max(height + fall_spd, 0);
    fall_spd -= gravity_spd;
    if height == 0 {
        on_ground = true;
    }
}

