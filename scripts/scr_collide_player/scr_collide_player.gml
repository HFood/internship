var _temp_local_var_3;
function scr_collide_player() //gml_Script_scr_collide_player
{
    grounded = 0
    var _temp_local_var_3 = abs(vsp)
    if (abs(vsp) <= 0)
    {
    }
    else
    {
        while 1
        {
            if (!(scr_solid_player(x, (y + sign(vsp)))))
            {
                y += sign(vsp)
                _temp_local_var_3 = (abs(vsp) - 1)
                if (abs(vsp) - 1)
                    continue
                else
                    break
            }
            else
            {
                vsp = 0
                continue
            }
        }
    }
    _temp_local_var_3 = abs(hsp)
    if (abs(hsp) <= 0)
    {
    }
    else
    {
        while 1
        {
            if (scr_solid_player((x + sign(hsp)), y) && (!(scr_solid_player((x + sign(hsp)), (y - 1)))))
                y--
            if ((!(scr_solid_player((x + sign(hsp)), y))) && (!(scr_solid_player((x + sign(hsp)), (y + 1)))) && scr_solid_player((x + sign(hsp)), (y + 2)))
                y++
            if (!(scr_solid_player((x + sign(hsp)), y)))
            {
                x += sign(hsp)
                _temp_local_var_3 = (abs(hsp) - 1)
                if (abs(hsp) - 1)
                    continue
                else
                    break
            }
            else
            {
                hsp = 0
                continue
            }
        }
    }
    if (vsp < 20)
        vsp += global.grv
    grounded |= scr_solid(x, (y + 1))
    grounded |= ((!(place_meeting(x, y, obj_platform))) && place_meeting(x, (y + 1), obj_platform))
    return;
}

