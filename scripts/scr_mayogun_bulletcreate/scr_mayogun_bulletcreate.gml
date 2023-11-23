function scr_mayogun_bulletcreate() //gml_Script_scr_mayogun_bulletcreate
{
    with (instance_create_depth((x + (image_xscale * 16)), (y + 10), 0, obj_mayo))
    {
        vsp = -3
        hsp = (other.image_xscale * 18)
    }
    with (instance_create_depth((x + (image_xscale * 16)), (y + 10), 0, obj_mayo))
        hsp = (other.image_xscale * 18)
    with (instance_create_depth((x + (image_xscale * 16)), (y + 10), 0, obj_mayo))
    {
        vsp = 3
        hsp = (other.image_xscale * 18)
    }
}

