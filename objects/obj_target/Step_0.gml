/// @description 

var hor = clamp(target_x - x, -1, 1);
var vert = clamp(target_y - y, -1, 1);

x += hor * moveSpeed; 
y += vert * moveSpeed;