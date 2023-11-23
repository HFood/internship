switch sprite_index
{
    case spr_cheeseneck_turn:
        image_xscale = (-image_xscale)
        state = "normal"
        break
    case spr_cheeseneck_shoot:
        throw_delay = 60
        thrown = 0
        state = "normal"
        break
}

