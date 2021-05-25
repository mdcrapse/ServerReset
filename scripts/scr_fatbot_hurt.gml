///scr_fatbot_hurt()

if !on_ground || got_hurt {
    exit;
}

got_hurt = true;

repeat irandom_range(2, 3) {
    var debri = instance_create(x + irandom_range(-8, 8), y + irandom_range(-8, 8), obj_robot_debri);
    debri.direction = point_direction(other.x, other.y, x, y) + random_range(-10, 10);
}

hp -= 1;
if hp <= 0 {
    repeat irandom_range(3, 5) {
        var debri = instance_create(x + irandom_range(-8, 8), y + irandom_range(-8, 8), obj_robot_debri);
        debri.direction = point_direction(other.x, other.y, x, y) + random_range(-10, 10);
    }
    instance_create(x, y, obj_fatbot_dead);
    instance_destroy();
}

