if (sprite_index == spr_cheesefist_land && other.state != "cheesed" && other.state != "snowball")
{
    if (global.level == "ancient" && global.no_cheesed == 0)
    {
        with (instance_create_depth(x, y, 1, obj_tvtrigger))
            txt = "Holy cow! That golden fist just CHRUSED you! Note that you can roll while cheesed and destroy cheese blocks!"
        global.no_cheesed = 1
    }
    with (other)
    {
        scr_player_action_voice_transfo()
        scr_sound(sfx_transfo)
        tauntduration = 0
        image_speed = 1
        rolltotackle = 1
        tacklehit = 1
        tackle_airhit = 1
        spinning = 0
        image_index = 0
        vsp = 30
        cheesed_state = "start"
        state = "cheesed"
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
    }
}
