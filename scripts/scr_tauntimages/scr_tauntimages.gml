function scr_tauntimages() //gml_Script_scr_tauntimages
{
    with (instance_create_depth(x, y, 30, obj_machafterimage))
        hsp = -15
    with (instance_create_depth(x, y, 30, obj_machafterimage))
        hsp = 15
    with (instance_create_depth(x, y, 30, obj_machafterimage))
        vsp = -15
    with (instance_create_depth(x, y, 30, obj_machafterimage))
        vsp = 15
    with (instance_create_depth(x, y, 30, obj_machafterimage))
    {
        vsp = 15
        hsp = -15
    }
    with (instance_create_depth(x, y, 30, obj_machafterimage))
    {
        vsp = -15
        hsp = 15
    }
    with (instance_create_depth(x, y, 30, obj_machafterimage))
    {
        hsp = -15
        vsp = -15
    }
    with (instance_create_depth(x, y, 30, obj_machafterimage))
    {
        hsp = 15
        vsp = 15
    }
}

