function scr_bigs_shake() //gml_Script_scr_bigs_shake
{
    sprite_index = spr_bigs_shake
    image_alpha = 1
    shk_x = irandom_range(-16, 16)
    shk_y = irandom_range(-16, 16)
    x = (curx + shk_x)
    y = (cury + shk_y)
    if (timetodie > 0)
        timetodie--
    else
    {
        scr_basheffect()
        scr_sound(sfx_hit)
        with (instance_create_depth(x, y, 2, obj_debris))
        {
            particles = 1
            hsp = choose(-8, 8)
            vsp = -8
            sprite_index = other.sprite_index
        }
        instance_destroy()
    }
}

