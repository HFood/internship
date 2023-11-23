function scr_player_hurt() //gml_Script_scr_player_hurt
{
    scr_player_collision(0, 0)
    scr_gravity()
    tauntduration = 0
    xface = image_xscale
    crouch = 0
    stomp = 0
    spinning = 0
    grabbing = 0
    if (hurt_time > 0)
        hurt_time--
    if (grounded && hurt_time == 0)
    {
        invincibility = 45
        state = "normal"
    }
    if (crouchless == 1)
        mask_index = spr_intern_crouch_hitbox
    else
        mask_index = spr_intern_hitbox
    image_speed = 1
}

