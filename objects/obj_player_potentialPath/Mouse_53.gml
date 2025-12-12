/// @description Create and calculate a path to the mouse

path = path_add();

mp_potential_path(path, mouse_x, mouse_y, 2, 4, false);

path_start(path, 2, path_action_stop, true);