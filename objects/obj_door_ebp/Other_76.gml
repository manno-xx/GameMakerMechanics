/// @description Insert description here
// You can write your code in this editor
if (event_data[? "event_type"] == "sprite event")
{
    show_debug_message(event_data[? "message"]);
    if(event_data[? "message"] == "doorOpened")
    {
        image_speed = 0;
    }
}