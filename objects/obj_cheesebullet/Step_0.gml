x += hsp
y += vsp
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
            sprite_index = other.sprite_index
            alarm[0] = 10
        }
        ghost_cd = 4
    }
}
if place_meeting(x, y, obj_solid)
{
    with (instance_create_depth((x + (16 * sign(hsp))), (y + (16 * sign(vsp))), -1, obj_effecttemporary))
    {
        image_blend = 0x89EBFF
        sprite_index = spr_effect5
    }
    var chs_debris = irandom_range(3, 5)
    repeat chs_debris
    {
        with (instance_create_depth(x, bbox_bottom, -1000, obj_debris))
        {
            sprite_index = spr_cheese_debris
            image_index = irandom_range(0, 3)
            hsp = irandom_range(-6, 6)
            vsp = irandom_range(-4, 1)
        }
    }
    instance_destroy()
}
image_xscale = sign(hsp)
