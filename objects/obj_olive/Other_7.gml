switch sprite_index
{
    case spr_olive_turn:
        image_xscale = (-image_xscale)
        state = "normal"
        break
    case spr_olive_heat:
        state = "normal"
        break
}

