///scr_tween_update()
/// Updates the current object's tweens.

scr_tween_expect_init();

for(var i = 0; i < _tween_count; i++) {
    // check tween time
    _tween_time[i] += 1;
    if _tween_time[i] > _tween_max_time[i] {
        // do the tweens to the end
        var cur_tween_var = _tween_var[i];
        var cur_tween_end = _tween_end[i];
        for(var j = 0; j < array_length_1d(cur_tween_var); j++) {
            variable_instance_set(id, cur_tween_var[j], cur_tween_end[j]);
        }
    
        script_execute(_tween_callback[i]);
        scr_tween_remove(i);
        continue;
    }

    // do the tweens
    var cur_tween_var = _tween_var[i];
    var cur_tween_spd = _tween_spd[i];
    for(var j = 0; j < array_length_1d(cur_tween_var); j++) {
        variable_instance_set(id, cur_tween_var[j], variable_instance_get(id, cur_tween_var[j]) + cur_tween_spd[j]);
    }
}
