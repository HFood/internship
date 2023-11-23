switch sprite_index
{
    case spr_tuna_dashstart:
        state = "dash"
        break
    case spr_tuna_heat_start:
        image_speed = 0
        image_index = (image_number - 1)
        break
    case spr_tuna_heat_end:
        image_speed = 0
        image_index = (image_number - 1)
        break
}

