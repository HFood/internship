switch sprite_index
{
    case spr_cocobomb_idlestart:
        state = "normal"
        break
    case spr_cocobomb_explode:
        hp--
        break
}

