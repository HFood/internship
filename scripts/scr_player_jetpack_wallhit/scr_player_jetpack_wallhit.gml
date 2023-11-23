function scr_player_jetpack_wallhit() //gml_Script_scr_player_jetpack_wallhit
{
    scr_player_collision(0, 0)
    scr_gravity()
    if (airstun_dur > 0)
        airstun_dur--
    else
        state = "normal"
    if (key_dash && (!(place_meeting(x, (y - 1), obj_solid))) && airstun_dur < 35)
    {
        if (move != 0)
            image_xscale = move
        image_index = 0
        state = "jetpack_windup"
    }
    if place_meeting((x + image_xscale), y, obj_solid)
        image_xscale = (-image_xscale)
    if grounded
        state = "normal"
    tauntduration = 0
    xface = image_xscale
    hsp = (7 * image_xscale)
    image_speed = 1
    mask_index = spr_intern_hitbox
    sprite_index = spr_player_tumblefall
}

