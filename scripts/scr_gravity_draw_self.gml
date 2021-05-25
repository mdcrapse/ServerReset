///scr_gravity_draw_self()

if on_ground {
    draw_self();
} else {
    draw_set_alpha(0.25);
    draw_set_colour(c_black);
    draw_circle(x, y, sprite_width / 4, false);
    draw_set_colour(-1);
    draw_set_alpha(1);
    
    draw_sprite_ext(sprite_index, image_index, x, y - height, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

