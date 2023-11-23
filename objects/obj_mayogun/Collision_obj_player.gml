if (other.state == "normal" && other.spinning == 1 && other.tauntduration == 0 && other.crouch == 0)
{
    global.mayogun = 1
    with (instance_create_depth((other.x - (other.x - x)), (other.y - (other.y - y)), -1, obj_effecttemporary))
        sprite_index = spr_effect20
    with (other)
    {
        scr_sound(sfx_shotgunpickup)
        sodaspd = 0
        tauntduration = 0
        image_speed = 1
        rolltotackle = 1
        tacklehit = 1
        tackle_airhit = 1
        spinning = 0
        image_index = 0
        state = "mayogun_pickup"
        if audio_is_playing(suplexsfx)
            audio_stop_sound(suplexsfx)
        if instance_exists(tackle_particle)
            instance_destroy(tackle_particle)
        if audio_is_playing(roll_sfx)
            audio_stop_sound(roll_sfx)
        if audio_is_playing(tackle0_sfx)
            audio_stop_sound(tackle0_sfx)
        if audio_is_playing(tackle1_sfx)
            audio_stop_sound(tackle1_sfx)
        if audio_is_playing(tackle2_sfx)
            audio_stop_sound(tackle2_sfx)
        tack0 = 0
        tack1 = 0
        tack2 = 0
    }
    instance_destroy()
}
