/// @description Draw circles to indicate offscreen targets

var cam = view_camera[0];

vp_min_x = camera_get_view_x(cam);
vp_min_y = camera_get_view_y(cam);
vp_max_x = vp_min_x + camera_get_view_width(cam) - drawingMargin;
vp_max_y = vp_min_y + camera_get_view_height(cam) - drawingMargin;

vp_min_x += drawingMargin;
vp_min_y += drawingMargin;

draw_set_colour(c_white);


for (var i = 0; i < instance_number(obj_target); ++i)
{
    var inst = instance_find(obj_target,i);
    if (instance_exists(inst)) 
    {
        // if rect one is _inside_ rect two this returns 1, if there is only a partial overlap, it returns 2, otherwise 0
        var overlapType = rectangle_in_rectangle(inst.bbox_left, inst.bbox_top, inst.bbox_right, inst.bbox_bottom, vp_min_x, vp_min_y, vp_max_x, vp_max_y);
        
        if(overlapType == 0)
        {
           //var pos = getClampedPos(inst);
           var pos = getRaytracedPos(player, inst);
           
           draw_circle(pos.x, pos.y, 8, true);
        }
    }
}


