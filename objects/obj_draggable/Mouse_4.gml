/// @description when clicked, set the 'flag' to true
/// and calculate the offset of the mouse from the position of this

isBeingDragged = true;

xOff = x - mouse_x;
yOff = y - mouse_y;

show_debug_message(xOff);