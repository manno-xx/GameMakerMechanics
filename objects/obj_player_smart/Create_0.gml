/// @description Set up grid and some more

cell_size = 64;

grid = mp_grid_create(0, 0, room_width / cell_size, room_height / cell_size, cell_size, cell_size);

mp_grid_add_instances(grid, obj_wall, false);

// pfft, xprevious and yprevious act up. Create my own
prevX = x;
prevY = y;