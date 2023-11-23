function scr_player_wallstun() //gml_Script_scr_player_wallstun
{
    scr_player_collision(0, 0)
    scr_gravity()
    xface = image_xscale
    tauntduration = 0
    grabonground = 0
    hsp = 0
    vsp = 0
    image_speed = 1.75
    mask_index = spr_intern_hitbox
    sprite_index = spr_player_wallhug
}

