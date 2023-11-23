if (other.hallwayenter == 0)
{
    with (obj_camera)
        mach_x = 0
    if (deaf == 0)
        scr_1sound(sfx_door)
    with (instance_create_depth(x, y, -10, obj_fade))
        type = "hall"
    if (global.coop == 1)
    {
        with (obj_player2)
        {
            vertical_xsc = image_xscale
            doornum = other.doornum
            hallway_y = (other.y - 18)
            hallway_id = other.id
            hallwayenter = 1
            if (other.image_angle == -90)
            {
                vertical_xperc = abs((((other.sprite_height / 2) + (x - other.x)) / other.sprite_height))
                hallway_dir = 2
            }
            else if (other.image_angle == 90)
            {
                vertical_xperc = abs((((other.sprite_height / 2) + (x - other.x)) / other.sprite_height))
                hallway_dir = 3
            }
            else
                hallway_dir = other.image_xscale
        }
    }
    with (other)
    {
        vertical_xsc = image_xscale
        doornum = other.doornum
        hallway_y = (other.y - 18)
        hallway_id = other.id
        hallwayenter = 1
        if (other.image_angle == -90)
        {
            vertical_xperc = abs((((other.sprite_height / 2) + (x - other.x)) / other.sprite_height))
            hallway_dir = 2
        }
        else if (other.image_angle == 90)
        {
            vertical_xperc = abs((((other.sprite_height / 2) + (x - other.x)) / other.sprite_height))
            hallway_dir = 3
        }
        else
            hallway_dir = other.image_xscale
    }
}
