switch char
{
    case "backy":
        switch spr
        {
            case "idle":
                if instance_exists(obj_player)
                {
                    if (obj_player.x < x)
                        sprite_index = spr_hubtable_backy_idle
                    else
                        sprite_index = spr_hubtable_backy_idle2
                }
                break
            case "talk":
                if instance_exists(obj_player)
                {
                    if (obj_player.x < x)
                    {
                        if (obj_player.cutscene_choice == 1)
                            sprite_index = spr_hubtable_backy_idle
                        else
                        {
                            switch array_get(dial_emo, dial_num)
                            {
                                case "normal":
                                    sprite_index = spr_hubtable_backy_talk
                                    break
                                case "happy":
                                    sprite_index = spr_hubtable_backy_talk_happy
                                    break
                            }

                        }
                    }
                    else if (obj_player.cutscene_choice == 1)
                        sprite_index = spr_hubtable_backy_idle2
                    else
                    {
                        switch array_get(dial_emo, dial_num)
                        {
                            case "normal":
                                sprite_index = spr_hubtable_backy_talk2
                                break
                            case "happy":
                                sprite_index = spr_hubtable_backy_talk_happy2
                                break
                        }

                    }
                }
                break
        }

        break
    case "intern":
        sprite_index = spr_hubtable_intern_idle
        break
    case "none":
        sprite_index = spr_hubtable
        break
}

if (cutscene == 1)
{
    spr = "talk"
    scr_message(array_get(dial, dial_num))
}
else
    spr = "idle"
if instance_exists(obj_player)
{
    if (place_meeting(x, y, obj_player) && obj_player.grounded && obj_player.crouch == 0 && obj_player.spinning == 0 && obj_player.grabbing == 0 && obj_player.state == "normal")
    {
        if (!instance_exists(cursid))
        {
            with (instance_create_depth(obj_player.x, (obj_player.bbox_top - 32), -1, obj_pointer))
            {
                other.cursid = id
                targ = 160
            }
        }
    }
    else
        instance_destroy(cursid)
}
