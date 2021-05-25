///scr_wind_staff_move_enemy()

if on_ground {
    on_ground = false;
    fall_spd = 5;
    speed = random_range(10, 11);
    direction = point_direction(other.x, other.y, x, y);
}

