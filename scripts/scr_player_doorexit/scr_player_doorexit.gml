function scr_player_doorexit() //gml_Script_scr_player_doorexit
{
    scr_player_collision(0, 0)
    xface = 1
    hsp = 0
    vsp = 0
    image_speed = 1
    switch doorexit_state
    {
        case "exit":
            sprite_index = spr_player_exit2
            break
        case "fear":
            sprite_index = spr_player_shock
            break
    }

}

