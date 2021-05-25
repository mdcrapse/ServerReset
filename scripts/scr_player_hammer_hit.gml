///scr_player_hammer_hit()

alarm[0] = scr_seconds(0.25);
is_released = true;

var hit_x = x + lengthdir_x(24, image_angle);
var hit_y = y + lengthdir_y(24, image_angle);

for(var i = 0; i < 10; i++) {
    var pow = instance_create(hit_x, hit_y, obj_hammer_pow);
    pow.direction = (360 / 10) * i;
}

scr_player_hit_spot(hit_x, hit_y, 16);

