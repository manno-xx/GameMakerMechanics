/// @description update the UI layer to show the ammo available

for (var i = 0; i < player.clipSize; i++) 
{
    if(i < player.bulletsInClip)
    {
        flexpanel_node_style_set_display(flexpanel_node_get_child(clipFlexBox, i), flexpanel_display.flex);
    }
    else 
    {
    	flexpanel_node_style_set_display(flexpanel_node_get_child(clipFlexBox, i), flexpanel_display.none);
    }
}
