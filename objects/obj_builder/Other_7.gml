switch sprite_index
{
    case spr_builderrat_turn:
        image_xscale = (-image_xscale)
        state = "normal"
        break
    case spr_builderrat_dynamitethrow:
        throw_delay = 150
        thrown = 0
        state = "normal"
        break
}

