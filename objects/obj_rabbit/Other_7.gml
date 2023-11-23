switch sprite_index
{
    case spr_rabbit_turn:
        image_xscale = (-image_xscale)
        state = "normal"
        break
    case spr_rabbit_runstart:
        angspr = spr_rabbit_run
        break
    case spr_rabbit_heat:
        heat_jumpspr = spr_rabbit_heat_air
        break
}

