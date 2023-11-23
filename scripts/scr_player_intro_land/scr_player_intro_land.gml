function scr_player_intro_land() //gml_Script_scr_player_intro_land
{
    scr_player_collision(0, 0)
    scr_gravity()
    xface = 1
    grabbing = 0
    spinning = 0
    tauntduration = 0
    stomp = 0
    crouch = 0
    vsp = 0
    if (hsp < 4)
        image_speed = 1
    else
        image_speed = 0
    if (hsp > 0)
        hsp -= 0.1
    sprite_index = spr_player_faceslide
}

