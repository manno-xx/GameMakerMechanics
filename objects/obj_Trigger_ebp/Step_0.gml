/// @description check if this trigger overlaps with the player

if(place_meeting(x, y, obj_Player_ebp) && !hasTriggered)
{
    hasTriggered = true;
    event_publish("open_door", {});
}
