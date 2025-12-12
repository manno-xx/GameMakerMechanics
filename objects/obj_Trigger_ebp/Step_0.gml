/// @description check if this trigger overlaps with the player

if(place_meeting(x, y, obj_Player_ebp) && !hasTriggered)
{
    event_trigger("open_door", 0);
    hasTriggered = true;
}
