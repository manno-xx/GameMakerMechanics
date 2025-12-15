/// @description move

xInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
yInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x += xInput * moveSpeed;
y += yInput * moveSpeed;
