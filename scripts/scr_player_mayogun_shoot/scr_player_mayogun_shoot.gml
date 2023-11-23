function scr_player_mayogun_shoot() //gml_Script_scr_player_mayogun_shoot
{
    scr_player_collision(0, 0)
    scr_gravity()
    xface = uppercut_xsc
    hsp -= (0.4 * uppercut_xsc)
    hsp = clamp(hsp, -10, 10)
    image_speed = 1
    sprite_index = spr_player_mayogun_shoot
}

