///scr_hurt_player(player_id)

if argument0.cur_no_hit_time >= 1 {
    exit;
}

audio_play_sound(
    choose(snd_robot_hit_1, snd_robot_hit_2, snd_robot_hit_3),
    0,
    false);

if obj_main.has_shield && argument0.shield_energy >= 1 {
    argument0.cur_no_hit_time = argument0.no_hit_time;
    argument0.shield_energy = 0;
    exit;
}

argument0.cur_no_hit_time = argument0.no_hit_time;
argument0.hp -= 1;
if argument0.hp <= 0 {
    scr_game_over();
}

