function scr_player_doorkey_enter() //gml_Script_scr_player_doorkey_enter
{
    scr_player_collision(0, 0)
    xface = 1
    hsp = 0
    vsp = 0
    image_speed = 0.9
    sprite_index = spr_player_doorkey_enter
    x += ((door_id.x - x) * 0.08)
}

