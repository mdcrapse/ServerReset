///scr_server_spawn(object)
/// Returns the created instance.
/// Spawns the specified object out of view from the player.

var mid_x = obj_player.x;
var mid_y = obj_player.y;
var radius = max(view_wview[0] * 0.75, view_hview[0] * 0.75) + irandom(100);

var dir = random(360);

return instance_create(
    mid_x + lengthdir_x(radius, dir),
    mid_y + lengthdir_y(radius, dir),
    argument0);

