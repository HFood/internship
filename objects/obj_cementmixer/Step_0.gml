if (ok == 1)
{
    if (timer > 0)
        timer--
    else
    {
        scr_basheffect_offset(0, -64)
        with (obj_camera)
            shk_strength += 8
        scr_sound(sfx_explosion)
        instance_activate_object(obj_player)
        with (obj_player)
            state = "cemented"
        ok = 0
        timer = 30
    }
}
