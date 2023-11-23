if instance_exists(targ)
{
    if (targ.state == "normal" && targ.breakdelay == 0)
    {
        scr_sound(sfx_projectile)
        with (targ)
        {
            breakspd = 3
            state = "olivebreak"
            breakdelay = 150
        }
    }
}
