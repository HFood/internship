scr_effectpoof()
var chs_debris = irandom_range(3, 5)
repeat chs_debris
{
    with (instance_create_depth(x, y, -1000, obj_debris))
    {
        sprite_index = spr_snowball_debris_big
        image_index = irandom_range(0, 3)
        hsp = irandom_range(-6, 6)
        vsp = irandom_range(-4, 1)
    }
}
chs_debris = irandom_range(4, 5)
repeat chs_debris
{
    with (instance_create_depth(x, y, -1000, obj_debris))
    {
        sprite_index = spr_snowball_debris
        image_index = irandom_range(0, 3)
        hsp = irandom_range(-6, 6)
        vsp = irandom_range(-4, 1)
    }
}
