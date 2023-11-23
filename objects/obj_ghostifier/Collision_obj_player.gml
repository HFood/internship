if (other.state != "ghost")
{
    other.suprastate = "ghost"
    image_index = 0
    scr_sound(sfx_machhit)
    if (other.x > x)
    {
        with (instance_create_depth(x, y, depth, obj_debris))
        {
            particles = 1
            hsp = 4
            vsp = -5
            sprite_index = spr_intern_dead
        }
    }
    else
    {
        with (instance_create_depth(x, y, depth, obj_debris))
        {
            particles = 1
            hsp = -4
            vsp = -5
            sprite_index = spr_intern_dead
        }
    }
    other.state = "ghost"
}
