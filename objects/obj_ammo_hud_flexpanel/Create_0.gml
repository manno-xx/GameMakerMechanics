/// @description draw the ammo top-left of screen

// player holds the ammo variable
player = instance_find(obj_player, 0);

_ui_layer = layer_get_flexpanel_node("ammo_hud");
clipFlexBox = flexpanel_node_get_child(_ui_layer, "clip");
