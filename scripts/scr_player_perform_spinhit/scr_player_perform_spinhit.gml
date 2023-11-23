function scr_player_perform_spinhit(argument0, argument1, argument2, argument3, argument4) //gml_Script_scr_player_perform_spinhit
{
    if (global.character == "intern")
    {
        grabcooldown -= 12
        spinhit_moving = argument0
        if (argument0 == 1)
        {
            image_xscale = argument1
            spinhit_dir = (-argument1)
            uppercut_spd = (-4 * argument1)
            vsp = argument3
        }
        if audio_is_playing(suplexsfx)
            audio_stop_sound(suplexsfx)
        image_index = 0
        if ((!grounded) && argument4 == 1)
            spinhit_spr = spr_player_suplexpunch_air
        else
            spinhit_spr = choose(spr_player_spinhit1, spr_player_spinhit2, spr_player_spinhit3, spr_player_spinhit4)
        state = "spinhit"
        rolltotackle = 1
        tacklehit = 1
        tackle_airhit = 1
        grabonground = 0
    }
}

