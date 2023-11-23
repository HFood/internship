if (!instance_exists(spawned_id))
{
    if (timer > 0)
        timer--
    else
    {
        with (instance_create_depth(x, (y - 18), 2, obj))
        {
            image_xscale = other.image_xscale
            nocombo = 1
            state = "stun"
            other.spawned_id = id
            blink = 8
            stuntime = 40
            stun_delay = 8
        }
        timer = 120
    }
}
