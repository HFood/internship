switch sprite_index
{
    case spr_cheeser_turn:
        image_xscale = (-image_xscale)
        state = "normal"
        break
    case spr_cheeser_shoot:
        throw_delay = 60
        thrown = 0
        state = "normal"
        break
}

