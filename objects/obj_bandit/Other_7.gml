switch sprite_index
{
    case spr_bandit_turn:
        image_xscale = (-image_xscale)
        state = "normal"
        break
    case spr_bandit_dynamitethrow:
        throw_delay = 120
        thrown = 0
        state = "normal"
        break
}

