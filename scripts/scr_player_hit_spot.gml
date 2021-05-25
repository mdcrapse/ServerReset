///scr_player_hit_spot(x, y, radius)

with obj_parent_enemy {
    if point_distance(argument0, argument1, x, y) < 8 + argument2 {
        script_execute(hurt_script);
    }
}

with obj_death_ring {
    if point_distance(argument0, argument1, x, y) < radius + argument2 {
        if !was_hit {
            var sound = audio_play_sound(snd_ring_hit, 0, false);
            audio_sound_pitch(sound, 1 + (1 - radius / (max_radius / 2)));
        }
        was_hit = true;
    }
}

with obj_chest {
    if point_distance(argument0, argument1, x, y) < 8 + argument2 {
        script_execute(on_open);
        for(var i = 0; i < sprite_get_number(spr_chest_debri) * 2; i++) {
            var debri = instance_create(
                x + random_range(-8, 8),
                y + random_range(-8, 8),
                obj_chest_debri);
            debri.image_index = i;
            debri.direction = point_direction(argument0, argument1, x, y) + random_range(-20, 20);
        }
        instance_destroy();
    }
}

with obj_endboss {
    if point_distance(argument0, argument1, x, y) < 32 + argument2 {
        was_hit = true;
        repeat irandom_range(3, 5) {
            var debri = instance_create(x + irandom_range(-8, 8), y + irandom_range(-8, 8), obj_robot_debri);
            debri.direction = point_direction(other.x, other.y, x, y) + random_range(-10, 10);
        }
        with instance_nearest(x, y, obj_server) {
            if !is_hacked
                && (state == STATE_STARTUP || state == STATE_SHUTDOWN)
            {
                bar_time += 1;
            }
        }
    }
}

