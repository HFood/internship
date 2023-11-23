function scr_enemy_hitfreeze() //gml_Script_scr_enemy_hitfreeze
{
    hsp = 0
    vsp = 0
    shk_x = irandom_range(-16, 16)
    shk_y = irandom_range(-16, 16)
    x = (curx + shk_x)
    y = (cury + shk_y)
    if (object_index != obj_dummy && object_index != obj_fridge)
        sprite_index = asset_get_index((("spr_" + string(enem_type)) + "_stun"))
    if (hitfreeze > 0)
    {
        hitfreeze--
        if (hitfreeze == 0)
            hitfreeze = -1
    }
}

