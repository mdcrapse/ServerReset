///scr_tween_remove(src_tween_id)
/// Swaps the ending tween with the specified tween then negates the tween count.

_tween_time[argument0] = _tween_time[_tween_count - 1];
_tween_max_time[argument0] = _tween_max_time[_tween_count - 1];
_tween_var[argument0] = _tween_var[_tween_count - 1];
_tween_end[argument0] = _tween_end[_tween_count - 1];
_tween_spd[argument0] = _tween_spd[_tween_count - 1];
_tween_callback[argument0] = _tween_callback[_tween_count - 1];

_tween_count -= 1;
