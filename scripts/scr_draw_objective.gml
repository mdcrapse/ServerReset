///scr_draw_objective(objective, optional_color)
/// Draws the objective. Objective color defaults to white.

var view_mid = floor(view_xview[0] + view_wview[0] / 2);

draw_set_halign(fa_center);
// draw text shadow
draw_set_colour(c_gray);
draw_text(view_mid - 1, floor(view_yview[0] + 10) + 1, argument[0]);
// draw text
if argument_count == 2 {
    draw_set_colour(argument[1]);
} else {
    draw_set_colour(c_white);
}
draw_text(view_mid, floor(view_yview[0] + 10), argument[0]);
draw_set_colour(-1);
draw_set_halign(fa_left);

