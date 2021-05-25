///scr_chestbot_hurt()

var chest = instance_create(x, y, obj_chest);
chest.on_open = on_chest_open;

var floor_text = instance_create(x, y, obj_floor_text);
floor_text.text = death_text;
floor_text.color = c_black;

repeat irandom_range(3, 5) {
    var debri = instance_create(x + irandom_range(-8, 8), y + irandom_range(-8, 8), obj_robot_debri);
    debri.direction = point_direction(other.x, other.y, x, y) + random_range(-10, 10);
}

instance_destroy();

