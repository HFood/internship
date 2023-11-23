if ((other.state == "normal" || other.state == "tackle0" || other.state == "tackle1" || other.state == "tackle2" || other.state == "grab" || other.state == "slip") && other.tauntduration == 0 && other.grounded && other.state != "ghost")
{
    if (other.state != "tackle2")
    {
        other.slipjump = 0
        other.suprastate = "slip"
        scr_1sound(sfx_slide)
        with (other)
        {
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
            tack0 = 0
            tack1 = 0
            tack2 = 0
            grabbing = 0
            spinning = 0
            tauntduration = 0
            state = "slip"
            crouchslide_dur = 14
        }
    }
    with (instance_create_depth(x, y, depth, obj_effecttemporary))
        sprite_index = spr_sauce_disappear
    instance_destroy()
}
