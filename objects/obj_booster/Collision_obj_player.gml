if (other.state != "ghost" && other.state != "cheesed" && other.state != "sodaride" && nocol == 0)
{
    nocol = 1
    scr_1sound(sfx_booster)
    with (other)
    {
        spinning = 0
        machauto = 10
        blink = 8
        hsp = 0
        vsp = 0
        x = other.x
        y = (other.y - 18)
        image_xscale = sign(other.image_xscale)
        machspd += 2
        tack0 = 1
        tack1 = 1
        tack2 = 1
        slope_getupspd = -1
        if audio_is_playing(suplexsfx)
            audio_stop_sound(suplexsfx)
        obj_camera.mach_x = 0
        instance_destroy(tackle_particle)
        tackle_particle = instance_create_depth(x, y, -1, obj_effecttarget)
        with (tackle_particle)
        {
            persistent = 1
            image_xscale = other.image_xscale
            targ = other.id
            sprite_index = spr_effect3
        }
        if audio_is_playing(tackle0_sfx)
            audio_stop_sound(tackle0_sfx)
        if audio_is_playing(tackle1_sfx)
            audio_stop_sound(tackle1_sfx)
        if audio_is_playing(roll_sfx)
            audio_stop_sound(roll_sfx)
        state = "tackle2"
    }
}
