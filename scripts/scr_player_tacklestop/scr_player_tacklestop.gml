function scr_player_tacklestop() //gml_Script_scr_player_tacklestop
{
    scr_player_collision(0, 0)
    scr_gravity()
    xface = image_xscale
    tauntduration = 0
    image_speed = 1
    if (tackleturnspd > 2)
        tackleturnspd -= 0.5
    if (tackleturnspd < 3 && tacklestop_spr == spr_player_tackle_stop)
    {
        machtime = 0
        image_index = 0
        tacklestop_spr = spr_player_tackle_stop_end
    }
    if (place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_slope))))
    {
        state = "wallstun"
        image_index = 0
    }
    sprite_index = tacklestop_spr
    hsp = (tackleturnspd * image_xscale)
}

