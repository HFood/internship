if instance_exists(obj_player)
{
    if (place_meeting(x, y, obj_player) && obj_player.grounded && obj_player.crouch == 0 && obj_player.spinning == 0 && obj_player.grabbing == 0 && obj_player.state == "normal")
    {
        if obj_player.key_up_once
        {
            while (garg == 0)
            {
                if (hat_array_selected < (hat_number + 3))
                {
                    hat_array_selected++
                    switch hat_array_selected
                    {
                        case 1:
                            if (hat_cyli == 1)
                            {
                                hat_act = "cylinder"
                                garg = 1
                            }
                            break
                        case 2:
                            if (hat_roof == 1)
                            {
                                hat_act = "rooftop"
                                garg = 1
                            }
                            break
                        case 3:
                            if (hat_crat == 1)
                            {
                                hat_act = "crateburg"
                                garg = 1
                            }
                            break
                        case 4:
                            if (hat_anci == 1)
                            {
                                hat_act = "ancient"
                                garg = 1
                            }
                            break
                        case 5:
                            if (hat_cave == 1)
                            {
                                hat_act = "cave"
                                garg = 1
                            }
                            break
                        case 6:
                            if (hat_reso == 1)
                            {
                                hat_act = "resort"
                                garg = 1
                            }
                            break
                        case 7:
                            if (hat_funh == 1)
                            {
                                hat_act = "funhouse"
                                garg = 1
                            }
                            break
                        case 8:
                            if (hat_circ == 1)
                            {
                                hat_act = "circus"
                                garg = 1
                            }
                            break
                        case 9:
                            if (hat_trai == 1)
                            {
                                hat_act = "train"
                                garg = 1
                            }
                            break
                    }

                }
                else if (garg == 0)
                {
                    hat_array_selected = 0
                    hat_act = "none"
                    garg = 1
                }
            }
            obj_playerhat.hat = hat_array_selected
            ini_open(global.savedata_ini)
            ini_write_real("story", "hat_current", hat_array_selected)
            ini_close()
            garg = 0
            with (obj_playerhat)
                scr_effectpoof()
        }
        switch hat_array_selected
        {
            case 0:
                scr_shortmessage("NOTHING")
                break
            case 1:
                scr_shortmessage("CYLINDER")
                break
            case 2:
                scr_shortmessage("MULTISTOREY HAT")
                break
            case 3:
                scr_shortmessage("A CRATE")
                break
            case 4:
                scr_shortmessage("PIECE OF CHEESE")
                break
            case 5:
                scr_shortmessage("HARDHAT")
                break
            case 6:
                scr_shortmessage("VACATION HAT")
                break
            case 7:
                scr_shortmessage("FUNHOUSE IDK")
                break
            case 8:
                scr_shortmessage("CLOWN WIG")
                break
            case 9:
                scr_shortmessage("MECHANIC'S CAP")
                break
            default:
                scr_shortmessage("ERROR")
                break
        }

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
