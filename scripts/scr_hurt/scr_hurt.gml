function scr_hurt() //gml_Script_scr_hurt
{
    if (obj_player.state != "hurt" && obj_player.state != "doorexit" && obj_player.state != "enterdoor" && obj_player.state != "entergate" && obj_player.state != "doorkey_enter" && obj_player.state != "escapeenter" && obj_player.invincibility == 0 && obj_player.state != "ghost" && obj_player.state != "enterportal" && obj_player.state != "outterportal")
    {
        with (obj_player)
        {
            if instance_exists(tackle_particle)
                instance_destroy(tackle_particle)
            if audio_is_playing(tackle0_sfx)
                audio_stop_sound(tackle0_sfx)
            if audio_is_playing(tackle1_sfx)
                audio_stop_sound(tackle1_sfx)
            if audio_is_playing(tackle2_sfx)
                audio_stop_sound(tackle2_sfx)
            if audio_is_playing(roll_sfx)
                audio_stop_sound(roll_sfx)
            tack0 = 0
            tack1 = 0
            tack2 = 0
            tacklehit = 1
            rolltotackle = 1
            machtime = 0
            machspd = 0
            grabonground = 0
            scr_player_perform_hurt(1, obj_player.id)
        }
    }
}

