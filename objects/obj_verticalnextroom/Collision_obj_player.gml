if (other.hallwayenter == 0)
{
    with (obj_camera)
        mach_x = 0
    if (deaf == 0)
        scr_1sound(sfx_door)
    with (instance_create_depth(x, y, -10, obj_fade))
        type = "hall"
    with (other)
    {
        var _x = (x - other.x)
        var _percentage = (_x / other.sprite_width)
        obj_player.vertical_x = _percentage
        doornum = other.doornum
        hallway_y = (other.y - 18)
        hallway_id = other.id
        hallwayenter = 1
        if (other.image_yscale == 1)
            hallway_dir = 2
        else if (other.image_yscale == -1)
            hallway_dir = 3
        x = (other.x + (other.sprite_width * vertical_x))
        var bbox_size = abs((bbox_right - bbox_left))
        x = clamp(x, (other.x + bbox_size), (other.bbox_right - bbox_size))
    }
}
