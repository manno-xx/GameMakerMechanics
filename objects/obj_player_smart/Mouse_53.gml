
/// @description calculate the shortest path to the mouse position

path = path_add();

if(mp_grid_path(grid, path, x, y, mouse_x, mouse_y, true))
{
    path_set_kind(path, 1);
    path_start(path, 8, path_action_stop, true);
}