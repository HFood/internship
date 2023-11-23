x += hsp
y += vsp
if (!(place_meeting(x, y, obj_enemy)))
    plc_mt = 0
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
if (hp <= 0)
    instance_destroy()
if place_meeting(x, y, obj_solid)
    instance_destroy()
image_xscale = sign(hsp)
