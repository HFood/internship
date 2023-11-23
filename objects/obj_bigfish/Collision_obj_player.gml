if (other.state == "normal" && other.spinning == 1 && other.tauntduration == 0 && other.crouch == 0)
{
    with (other)
    {
        scr_player_action_voice_transfo()
        scr_sound(sfx_transfo)
        sodaspd = 0
        x = other.x
        y = other.y
        tauntduration = 0
        image_speed = 1
        rolltotackle = 1
        tacklehit = 1
        tackle_airhit = 1
        spinning = 0
        image_index = 0
        onfire_spd = 2
        state = "fishride"
        if audio_is_playing(suplexsfx)
            audio_stop_sound(suplexsfx)
        if instance_exists(tackle_particle)
            instance_destroy(tackle_particle)
        if audio_is_playing(roll_sfx)
            audio_stop_sound(roll_sfx)
        if audio_is_playing(tackle1_sfx)
            audio_stop_sound(tackle1_sfx)
        tack0 = 0
        tack1 = 0
        tack2 = 0
        facing = other.image_xscale
        image_xscale = other.image_xscale
        tackle_particle = instance_create_depth(x, y, -1, obj_effecttarget)
        with (tackle_particle)
        {
            persistent = 1
            image_xscale = other.image_xscale
            targ = other.id
            sprite_index = spr_effect3
        }
    }
    instance_destroy()
}
