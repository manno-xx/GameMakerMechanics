/// @description interact
/// when E is pressed, the frame of the animation is set to 1 
/// obviously this should have an effect elsewhere too, but that can be anything, is game (design) dependent.
/// and, yes, it could be nicer having an animation play, be built to make consecutive E-pressing flip back or something, etc. etc.

if(keyboard_check_pressed(ord("E")))
{
    image_index = 1;
}