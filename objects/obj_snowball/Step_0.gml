scr_player_collision(0, 0)
if (timer > 0)
    timer--
else
    instance_destroy()
if (safe == 0)
{
    if (ghost_cd > 0)
        ghost_cd--
    else
    {
        with (instance_create_depth(x, y, 30, obj_ghostmove))
        {
            image_index = other.image_index
            image_xscale = other.image_xscale
            sprite_index = other.sprite_index
            plain = 1
            image_blend = 0xFFA454
        }
        ghost_cd = 4
    }
}
if place_meeting((x + image_xscale), y, obj_solid)
    instance_destroy()
if grounded
{
    if (jumped == 0)
    {
        var chs_debris = irandom_range(4, 5)
        repeat chs_debris
        {
            with (instance_create_depth(x, bbox_bottom, -1000, obj_debris))
            {
                sprite_index = spr_snowball_debris
                image_index = irandom_range(0, 3)
                hsp = irandom_range(-6, 6)
                vsp = irandom_range(-4, 1)
            }
        }
        vsp = -6
        jumped = 1
    }
}
scr_gravity()
hsp = (image_xscale * 8)
