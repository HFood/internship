function scr_player_parry() //gml_Script_scr_player_parry
{
    scr_player_collision(0, 0)
    xface = image_xscale
    if (spinhit_moving == 1)
    {
        switch spinhit_dir
        {
            case -1:
                if (hsp > 0.5)
                    hsp -= 0.3
                else
                    hsp = 0
                break
            case 1:
                if (hsp < 0.5)
                    hsp += 0.3
                else
                    hsp = 0
                break
        }

        scr_gravity()
        image_xscale = spinhit_dir
    }
    else
    {
        hsp = 0
        vsp = 0
    }
    if (ghost_cd > 0)
        ghost_cd--
    else
    {
        with (instance_create_depth(x, y, 30, obj_machafterimage))
            alarm[0] = 10
        ghost_cd = 4
    }
    grabbing = 0
    spinning = 0
    image_speed = 1
    grabonground = 0
}

