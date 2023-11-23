switch sprite_index
{
    case spr_bread_turn:
        image_xscale = (-image_xscale)
        state = "normal"
        break
    case spr_bread_heat_start:
        heat_state = 2
        scr_sound(sfx_projectile)
        break
    case spr_bread_heat_end:
        state = "normal"
        heat_delay = 80
        break
}

