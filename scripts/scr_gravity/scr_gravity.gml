function scr_gravity() //gml_Script_scr_gravity
{
    if (object_index == obj_player)
    {
        if inwater
            vsp += (global.grv * 0.75)
        else
            vsp += global.grv
    }
    else
        vsp += global.grv
}

