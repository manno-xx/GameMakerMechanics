/// @description initialize
// You can write your code in this editor

self.image_speed = 0;

event_subscribe("open_door", function(context)
{
    self.openUp();
});

// play animation in this sprite
openUp = function()
{
    image_speed = 1;
}

