// Graciously provided by: https://medium.com/@ahmadrezakml/event-driven-architecture-in-game-development-unity-gamemaker-c76915361ff0
// 
// Event based programming means that objects in a game's code 
//   communicate with each other through messages which are sent when a certain event takes place
// 
// Example: 
//   Player gets hurt. That script sends out an event message with the new HP as a payload
//   The HUD listens for such events and when it comes in, it updated the HP bar accordingly
//   The 'game manager' also listens for those events and if the HP turns out to be 0 (zero), it is GAME OVER
// 
// This means that there must be a central ledger that stores which objects are interested in which events
// This script uses the ds_map for that purpose and it is stored in the global.events variable
// 
// The two functions below add elements to that list. Those elements are always a pair: 
//   - the event of interest (the event name)
//   - the function to execute as a result (the callback) 
//

global.events = ds_map_create();

function event_add_listener(event_name, callback) {
    if (!ds_map_exists(global.events, event_name)) {
        ds_map_add(global.events, event_name, ds_list_create());
    }
    var listeners = global.events[? event_name];
    ds_list_add(listeners, callback);
}

function event_trigger(event_name, data) {
    if (ds_map_exists(global.events, event_name)) {
        var listeners = global.events[? event_name];
        for (var i = 0; i < ds_list_size(listeners); i++) {
            var callback = ds_list_find_value(listeners, i);
            script_execute(callback, data);
        }
    }
}