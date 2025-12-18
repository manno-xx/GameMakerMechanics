/// @description init

/*
 * This object looks for instances of 'obj_target' or its children
 * The positions of all the instances found that are _not_ inside the viewport, 
 *   will be marked along the edge of the viewport by a circle
 * 
 * 
 * Possible improvements:
 * - let the target objects refer to a sprite that will be drawn. As such indicating the type
 * 
 * Possible alternative mapping:
 * - make the marker appear on the line/vector from player to target (better probably :) )
 */

drawingMargin = 10;

// the raytracing method requires a reference to the player
player = instance_find(obj_player1, 0);

/**
 * Calculate the position using clamping
 * This method uses perpendicular lines from the target to the edges of the camera's view
 */ 
getClampedPos = function(targetInstance)
{
    var ix = targetInstance.x; 
    var iy = targetInstance.y; 
    
    var markerX = clamp(targetInstance.x, vp_min_x, vp_max_x);
    var markerY = clamp(targetInstance.y, vp_min_y, vp_max_y);
    
    return {
        x: markerX,
        y: markerY        
    };
}

/**
 * Calculate the position using 'raytracing'
 * Basically calculates the intersection between the line from player to target en the edge of the view
 */ 
getRaytracedPos = function(player, targetInstance)
{
    
    var dx = targetInstance.x - player.x;
    var dy = targetInstance.y - player.y;
    
    // should maybe be max int or something.
    tX = 10000;
    tY = 10000;

    if (dx > 0) tX = (vp_max_x - player.x) / dx; // to the right
    if (dx < 0) tX = (vp_min_x - player.x) / dx; // to the left

    if (dy > 0) tY = (vp_max_y - player.y) / dy; // to the bottom
    if (dy < 0) tY = (vp_min_y - player.y) / dy; // to the top

    var t = min(tX, tY)
    
    return {
        x: player.x + t * dx,
        y: player.y + t * dy
    }
}