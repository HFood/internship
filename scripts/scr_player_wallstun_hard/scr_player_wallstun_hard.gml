function scr_player_wallstun_hard() //gml_Script_scr_player_wallstun_hard
{
    scr_player_collision(0, 0)
    scr_gravity()
    if grounded
        hsp = 0
    tauntduration = 0
    xface = (-image_xscale)
    image_speed = 1
    mask_index = spr_intern_hitbox
    sprite_index = spr_player_wallstun_hard
}

