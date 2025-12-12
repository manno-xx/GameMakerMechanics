/// @description move

hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(hor * mySpeed, ver * mySpeed, obj_wall, 4);

// look where you're going
var angle = point_direction(xprevious, yprevious, x, y);
image_angle = angle;
