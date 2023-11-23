x += hsp
y += vsp
if (place_meeting(x, y, obj_solid) && (!(place_meeting(x, y, obj_destroyable))) && (!(place_meeting(x, y, obj_targetblock))))
    instance_destroy()
if (abs(hsp) == 14)
{
    image_xscale = sign(hsp)
    switch vsp
    {
        case -3:
            if (image_xscale == 1)
                image_angle = 15
            else
                image_angle = -15
            break
        case 0:
            image_angle = 0
            break
        case 3:
            if (image_xscale == 1)
                image_angle = -15
            else
                image_angle = 15
            break
    }

}
else
{
    switch hsp
    {
        case -3:
            if (image_xscale == 1)
                image_angle = 255
            else
                image_angle = 285
            break
        case 0:
            image_angle = 270
            break
        case 3:
            if (image_xscale == 1)
                image_angle = 285
            else
                image_angle = 255
            break
    }

}
if (safe == 0)
{
    if (ghost_cd > 0)
        ghost_cd--
    else
    {
        with (instance_create_depth(x, y, 30, obj_machafterimage))
        {
            image_index = other.image_index
            image_xscale = other.image_xscale
            image_yscale = other.image_yscale
            sprite_index = other.sprite_index
            image_angle = other.image_angle
            alarm[0] = 10
        }
        ghost_cd = 4
    }
}
