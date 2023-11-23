function scr_silh_end() //gml_Script_scr_silh_end
{
    if (global.silhouette_mode == 1)
        gpu_set_fog(false, c_white, 0, 0)
}

