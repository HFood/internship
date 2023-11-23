function scr_player_ghost() //gml_Script_scr_player_ghost
{
    scr_player_collision(0, 0)
    if grounded
        vsp = -6
    xface = image_xscale
    grabbing = 0
    spinning = 0
    crouch = 0
    stomp = 0
    mask_index = spr_intern_hitbox
    image_speed = 1
    switch ghost_state
    {
        case "start":
            hsp = 0
            vsp = 0
            sprite_index = spr_player_ghost_start
            vsp += 0.6
            vsp = min(vsp, 3)
            break
        case "idle":
            hsp = (move * 5)
            sprite_index = spr_player_ghost_idle
            if key_jump
            {
                image_index = 0
                ghost_state = "jump"
                scr_sound(sfx_jump)
                vsp = -9
                vsp += 0.6
                vsp = min(vsp, 3)
            }
            else if key_down
            {
                vsp += 1.2
                vsp = min(vsp, 5)
            }
            else
            {
                vsp += 0.6
                vsp = min(vsp, 3)
            }
            break
        case "jump":
            hsp = (move * 5)
            sprite_index = spr_player_ghost_jump
            if key_jump
            {
                image_index = 0
                ghost_state = "jump"
                scr_sound(sfx_jump)
                vsp = -9
                vsp += 0.6
                vsp = min(vsp, 3)
            }
            else if key_down
            {
                vsp += 1.2
                vsp = min(vsp, 5)
            }
            else
            {
                vsp += 0.6
                vsp = min(vsp, 3)
            }
            break
        case "end":
            xface = 1
            hsp = 0
            vsp = 0
            sprite_index = spr_player_ghost_end
            vsp += 0.6
            vsp = min(vsp, 3)
            break
    }

}

