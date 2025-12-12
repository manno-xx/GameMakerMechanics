/// @description initialize
// You can write your code in this editor

self.image_speed = 0;

openDoor = function(){
    show_debug_message(self);
    self.image_speed = 1;
}

event_add_listener("open_door", openDoor);


