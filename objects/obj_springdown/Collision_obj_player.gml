if (other.state != "ghost" && other.state != "bodyslam")
{
    with (other)
    {
        x = other.x
        bodyslam_particle = instance_create_depth(x, y, -1, obj_effecttarget)
        with (bodyslam_particle)
        {
            targ = other.id
            sprite_index = spr_effect14
        }
        tack0 = 0
        tack1 = 0
        tack2 = 0
        if audio_is_playing(suplexsfx)
            audio_stop_sound(suplexsfx)
        if instance_exists(tackle_particle)
            instance_destroy(tackle_particle)
        if audio_is_playing(tackle1_sfx)
            audio_stop_sound(tackle1_sfx)
        if audio_is_playing(tackle2_sfx)
            audio_stop_sound(tackle2_sfx)
        if audio_is_playing(roll_sfx)
            audio_stop_sound(roll_sfx)
        bodyslam_type = 2
        vsp = 8
        bodyslam_serious = 1
        state = "bodyslam"
    }
}
