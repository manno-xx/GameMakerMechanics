// Graciously provided by: https://www.youtube.com/watch?v=aD1ju-4PHNc
// 
// Event based programming means that objects in a game's code 
//   communicate with each other through messages which are sent when a certain event takes place
// 
// Example: 
//   Player gets hurt. That script sends out an event message with the new HP as a payload
//   The HUD listens for such events and when it comes in, it updated the HP bar accordingly
//   The 'game manager' may also listen for those events and if the HP turns out to be 0 (zero), it is GAME OVER
// 
// This means that there must be a central ledger that stores which objects are interested in which events
// This script uses a struct for that purpose and it is stored in the global.registeredEvents variable
// 
// The subscribe function below adds elements to that struct. Those elements are always a pair: 
//   - the event of interest (the event name)
//   - the function to execute as a result (the callback)
// 
// {
//   "open_door": [functionOne, functionTwo]
// }
//

global.registeredEvents = {};

function event_subscribe(event_name, callback)
{
    var eventRegistered = variable_struct_exists(global.registeredEvents, event_name);
    
    if(!eventRegistered)
    {
        variable_struct_set(global.registeredEvents, event_name, []);
    }
    
    var callbacks = variable_struct_get(global.registeredEvents, event_name);
    array_push(callbacks, callback);
}


function event_publish(event_name, context)
{
    var eventRegistered = variable_struct_exists(global.registeredEvents, event_name);
    
    if(!eventRegistered) return;
    
    var callbacks = variable_struct_get(global.registeredEvents, event_name);
    
    for (var i = 0; i < array_length(callbacks); i++) 
    {
    	var callback = array_get(callbacks, i);
        
        callback(context);
    }
}






