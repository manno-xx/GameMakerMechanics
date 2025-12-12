/// @description move me

var moveSpeed = 2;

var hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x += hor * moveSpeed;
y += ver * moveSpeed;