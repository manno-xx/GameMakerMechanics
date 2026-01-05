/// @description move the object

hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x += hor * moveSpeed;
y += ver * moveSpeed;