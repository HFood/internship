switch sprite_index
{
    case spr_magician_turn:
        image_xscale = (-image_xscale)
        state = "normal"
        break
    case spr_magician_spellcast:
        throw_delay = 180
        thrown = 0
        state = "normal"
        break
}

