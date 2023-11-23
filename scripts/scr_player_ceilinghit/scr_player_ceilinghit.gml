function scr_player_ceilinghit() //gml_Script_scr_player_ceilinghit
{
    scr_player_collision(0, 0)
    xface = image_xscale
    hsp = 0
    vsp = 0
    image_speed = 0.75
    sprite_index = spr_player_ceilinghit
    grabonground = 0
    rolltotackle = 1
    tacklehit = 1
    machspd = 0
    machtime = 0
}

