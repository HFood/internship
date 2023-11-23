function scr_player_mayogun_pickup() //gml_Script_scr_player_mayogun_pickup
{
    scr_player_collision(0, 0)
    scr_gravity()
    xface = image_xscale
    hsp = 0
    image_speed = 1
    sprite_index = spr_player_mayogun_pickup
}

