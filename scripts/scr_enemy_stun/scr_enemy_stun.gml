function scr_enemy_stun() //gml_Script_scr_enemy_stun
{
    if (place_meeting((x + hsp), y, obj_solid) && machstunned == 0)
        hsp = (-hsp)
    if grounded
    {
        if (hsp > 0.2)
            hsp -= 0.4
        else if (hsp < -0.2)
            hsp += 0.4
        else
            hsp = 0
    }
    if (object_index != obj_dummy)
    {
        if (stuntime > 0)
            stuntime--
        else
        {
            heat_delay = 40
            state = "normal"
        }
        sprite_index = asset_get_index((("spr_" + string(enem_type)) + "_stun"))
    }
}

