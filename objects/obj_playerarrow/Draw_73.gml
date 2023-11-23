switch global.character
{
    case "intern":
        draw_sprite_ext(spr_playerarrow, 0, x, y, 1, 1, image_angle, c_white, 1)
        draw_sprite_ext(spr_playerarrow_icon, 0, x, y, 1, 1, 0, c_white, 1)
        break
    case "backy":
        draw_sprite_ext(spr_playerarrow, 1, x, y, 1, 1, image_angle, c_white, 1)
        draw_sprite_ext(spr_playerarrow_icon, 1, x, y, 1, 1, 0, c_white, 1)
        break
}

