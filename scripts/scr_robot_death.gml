///scr_robot_death()

repeat irandom_range(3, 5) {
    var debri = instance_create(x + irandom_range(-8, 8), y + irandom_range(-8, 8), obj_robot_debri);
    debri.direction = point_direction(other.x, other.y, x, y) + random_range(-10, 10);
}

instance_destroy();

