if (!instance_exists(spawned_id))
{
    if (timer > 0)
        timer--
    else
    {
        scr_effectpoof()
        with (instance_create_depth(x, (y + 14), 2, obj_soda))
        {
            other.spawned_id = id
            image_xscale = other.image_xscale
        }
        timer = 120
    }
}
