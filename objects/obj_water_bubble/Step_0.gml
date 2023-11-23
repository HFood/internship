y -= 3
if (!(place_meeting(x, y, obj_water)))
{
    with (instance_create_depth(x, y, depth, obj_effecttemporary))
        sprite_index = spr_water_bubble_pop
    instance_destroy()
}
