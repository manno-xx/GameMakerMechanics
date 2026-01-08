/// @description Draw the hp bar

var perc = barSource.currentHp / barSource.maxHp;

draw_set_alpha(1);

// outline
draw_set_colour(c_white);
draw_rectangle(left -2, top -2, left + barWidth + 2, top + barHeight + 2, true);

// actual bar
draw_set_colour(c_red);
draw_rectangle(left, top, left + barWidth * perc, top + barHeight, false);