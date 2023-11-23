function scr_player_wallstun_air() //gml_Script_scr_player_wallstun_air
{
    scr_player_collision(0, 0)
    scr_gravity()
    if (airstun_dur > 0)
        airstun_dur--
    else
        state = "normal"
    if grounded
        state = "normal"
    grabonground = 0
    tauntduration = 0
    xface = image_xscale
    hsp = 0
    image_speed = 1
    mask_index = spr_intern_hitbox
    sprite_index = spr_player_airstun
}

