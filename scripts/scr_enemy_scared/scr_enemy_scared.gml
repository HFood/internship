function scr_enemy_scared() //gml_Script_scr_enemy_scared
{
    hsp = 0
    if (object_index != obj_dummy)
    {
        if (scaretime > 0)
            scaretime--
        else
            state = "normal"
        sprite_index = asset_get_index((("spr_" + string(enem_type)) + "_scared"))
    }
}

