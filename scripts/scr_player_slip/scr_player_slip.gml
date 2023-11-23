function scr_player_slip() //gml_Script_scr_player_slip
{
    scr_player_collision(0, 0)
    scr_gravity()
    xface = image_xscale
    if (place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_slope))))
    {
        if audio_is_playing(slidesfx)
            audio_stop_sound(slidesfx)
        spinning = 0
        grabbing = 0
        if (slipjump == 1)
        {
            crouch = 0
            scr_1sound(sfx_slip)
            jumpspr = spr_lamp
            vsp = -13
            y--
            state = "normal"
        }
        else
        {
            if (!grounded)
                vsp -= 3
            state = "wallstun"
            image_index = 0
        }
    }
    if (crouchslide_dur > 4)
        crouchslide_dur -= 0.25
    else
        state = "normal"
    sprite_index = spr_player_slip
    hsp = (crouchslide_dur * image_xscale)
    image_speed = (crouchslide_dur / 5)
}

