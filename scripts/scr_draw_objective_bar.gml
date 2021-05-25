///scr_draw_objective_bar(objective, percent_done, bar_color)

var view_mid = floor(view_xview[0] + view_wview[0] / 2)
var bar_mid = floor(sprite_get_width(spr_objective_bar) / 2);

draw_sprite(spr_objective_bar, 0, view_mid - bar_mid, view_yview[0] + 1);
draw_set_colour(argument2);
draw_set_alpha(0.75);
draw_rectangle(
    view_mid - bar_mid + 1,
    view_yview[0] + 2,
    view_mid - bar_mid + 1 + ((sprite_get_width(spr_objective_bar) - 3) * argument1),
    view_yview[0] + 2 + (sprite_get_height(spr_objective_bar) - 3),
    false);
draw_set_colour(-1);
draw_set_alpha(1);

draw_set_halign(fa_center);
draw_set_colour(c_gray);
draw_text(view_mid - 1, floor(view_yview[0] + 10) + 1, argument0);
draw_set_colour(c_white);
draw_text(view_mid, floor(view_yview[0] + 10), argument0);
draw_set_colour(-1);
draw_set_halign(fa_left);

