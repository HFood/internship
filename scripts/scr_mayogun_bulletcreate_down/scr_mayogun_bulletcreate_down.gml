function scr_mayogun_bulletcreate_down() //gml_Script_scr_mayogun_bulletcreate_down
{
    with (instance_create_depth(x, (y + 10), 0, obj_mayo))
    {
        vsp = 18
        hsp = -3
    }
    with (instance_create_depth(x, (y + 10), 0, obj_mayo))
    {
        vsp = 18
        hsp = 0
    }
    with (instance_create_depth(x, (y + 10), 0, obj_mayo))
    {
        vsp = 18
        hsp = 3
    }
}

