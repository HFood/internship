if ((!(place_meeting(x, y, obj_player))) || obj_player.state != "enterportal")
{
    if (scale > 0)
        scale -= 0.01
    else
        visible = false
}
image_angle += 12
if (scale > 0)
{
    if (ghost_cd > 0)
        ghost_cd--
    else
    {
        with (instance_create_depth(x, y, 30, obj_ghostmove))
        {
            depth = 21
            plain = 1
            image_blend = 0xF04D7E
            sprite_index = other.sprite_index
            image_index = other.image_index
            image_xscale = other.scale
            image_yscale = other.scale
            image_angle = other.image_angle
            direction = irandom_range(1, 360)
            speed = 1
        }
        ghost_cd = 5
    }
    if (parc_time > 0)
        parc_time--
    else
    {
        repeat irandom_range(1, 3)
        {
            with (instance_create_depth(x, y, 21, obj_flameeffect))
            {
                depth = 21
                image_xscale = 1
                speed = 4
                sprite_index = spr_secretportal_particles
                image_index = irandom_range(0, 4)
            }
        }
        parc_time = irandom_range(5, 15)
    }
}
