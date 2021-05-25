///scr_tween(tweens, time, callback)
/// Starts the tweens on the current object.

if 2 % array_length_1d(argument0) == 1 {
    show_error("incorrect argument count to scr_tween", true);
}

scr_tween_expect_init();

_tween_time[_tween_count] = 0;
_tween_max_time[_tween_count] = argument1;
_tween_callback[_tween_count] = argument2;

// tween variable names
var new_tween_var = array_create(array_length_1d(argument0) / 2)
for(var i = 0; i < array_length_1d(argument0); i += 2) {
    new_tween_var[i / 2] = argument0[@ i];
}
_tween_var[_tween_count] = new_tween_var;

// the ending for each tween
var new_tween_end = array_create(array_length_1d(_tween_var));
for(var i = 1; i < array_length_1d(argument0); i += 2) {
    new_tween_end[(i - 1) / 2] = argument0[@ i];
}
_tween_end[_tween_count] = new_tween_end;

// the speed for each tween
var new_tween_spd = array_create(array_length_1d(_tween_var));
for(var i = 0; i < array_length_1d(new_tween_var); i++) {
    new_tween_spd[i] = (argument0[@ i * 2 + 1] - variable_instance_get(id, new_tween_var[i])) / _tween_max_time[_tween_count];
}
_tween_spd[_tween_count] = new_tween_spd;

_tween_count += 1;
