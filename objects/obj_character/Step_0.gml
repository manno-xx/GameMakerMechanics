/// @description move

moveDir = keyboard_check(ord("D")) - keyboard_check(ord("A"));

if(moveDir != 0)
{
    image_xscale = moveDir;
    sprite_index = spr_angry_runner_walk;
    x += moveDir * moveSpeed;
}
else 
{
    sprite_index = spr_angry_runner_idle;
}

