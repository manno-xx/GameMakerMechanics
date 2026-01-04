/// @description Initialise the state machine

currentHp = 10.1;
maxHp = 100;
restedHp = 60;
goRestHp = 20;
isFatigedHp = 5;

chaseDistance = 100;

restorePerSecond = 2.1;
drainPerSecond = 4;

fsm = new SnowState("idle", true);
fsm.history_enable();

/// 
/// the idle state. When HP is high enough, it transitions to patrol
/// 
fsm.add("idle", 
{
    enter: function()
    {
        restorePerSecond = 6.0;
        sprite_index = spr_womanGreen_stand;
    },
    step: function()
    {
        currentHp = clamp(currentHp + restorePerSecond / game_get_speed(gamespeed_fps), 0, maxHp);
        fsm.trigger("idle->patrol");
    },
    leave: function()
    {
        
    }
});
// transitions from Idle state to other states
fsm.add_transition("idle->patrol", "idle", "patrol", function(){return currentHp >= restedHp});

///
///  the patrol state. When HP is down too much, it transitions to idle (to rest)
///
fsm.add("patrol", 
{
    enter: function()
    {
        drainPerSecond = 4.0;
        sprite_index = spr_womanGreen_silencer;
    },
    step: function()
    {
        currentHp = clamp(currentHp - drainPerSecond / game_get_speed(gamespeed_fps), 0, maxHp);
        fsm.trigger("patrol->idle");
        fsm.trigger("patrol->chase");
    },
    leave: function()
    {
        
    }
});
// transitions from patrol state to other states
fsm.add_transition("patrol->idle", "patrol", "idle", function(){return currentHp <= goRestHp});
fsm.add_transition("patrol->chase", "patrol", "chase", function(){return distance_to_point(mouse_x, mouse_y) <= chaseDistance});

///
///  the chase state. When HP is down too much, it transitions to idle (to rest)
/// 
fsm.add("chase", 
{
    enter: function()
    {
        drainPerSecond = 8.0;
    },
    step: function()
    {
        mp_potential_step(mouse_x, mouse_y, 2, false);
        currentHp = clamp(currentHp - drainPerSecond / game_get_speed(gamespeed_fps), 0, maxHp);
        fsm.trigger("chase->idle");
    },
    leave: function()
    {
        
    }
});
// transitions from chase state to other states
fsm.add_transition("chase->idle", "chase", "idle", function(){return currentHp <= goRestHp});