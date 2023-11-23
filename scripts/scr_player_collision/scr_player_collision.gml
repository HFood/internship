function scr_player_collision(argument0, argument1) //gml_Script_scr_player_collision
{
    var _platform = instance_place(x, (y + max(1, vsp)), obj_platform)
    var _platform2 = collision_line(xprevious, (yprevious + 50), x, bbox_bottom, obj_platform, false, true)
    if ((_platform && bbox_bottom <= _platform.bbox_top) || (_platform2 && bbox_bottom <= _platform2.bbox_top))
    {
        if (vsp > 0)
        {
            if (_platform && bbox_bottom <= _platform.bbox_top)
            {
                while (!(place_meeting(x, (y + sign(vsp)), obj_platform)))
                    y += sign(vsp)
            }
            else
            {
                vsp = 0
                y = (_platform2.y - 51)
            }
            if (object_index == obj_player)
            {
                if ((place_meeting(x, (y - 1), obj_destroyable) || place_meeting(x, (y - 1), obj_breadbox_big_down)) && state == "wallride")
                {
                }
                else
                    vsp = 0
            }
            else
                vsp = 0
            grounded = 1
            platform_grounded = 1
        }
        else
            platform_grounded = 0
    }
    else
        platform_grounded = 0
    if (collision_line(xprevious, (yprevious + 50), x, bbox_bottom, obj_platform, false, true) && vsp > 0)
    {
        var feetonplat = collision_line(xprevious, (yprevious + 50), x, bbox_bottom, obj_platform, false, true)
        y = (feetonplat.bbox_top - 51)
    }
    var vcollide = instance_place(x, (y + vsp), obj_solid)
    if (vcollide != -4)
    {
        while (!(place_meeting(x, (y + sign(vsp)), obj_solid)))
            y += sign(vsp)
        if (argument1 == 1)
            vsp = (-vsp)
        else if (object_index == obj_player)
            vsp = 0
        else
            vsp = 0
        if place_meeting(x, (y + 1), obj_solid)
            grounded = 1
    }
    else if (platform_grounded == 0)
        grounded = 0
    if (object_index == obj_player)
    {
        if (hitfreeze <= 0)
            y += vsp
    }
    else
        y += vsp
    var hcollide = instance_place((x + hsp), y, obj_solid)
    if (hcollide != -4)
    {
        yplus = 0
        while (place_meeting((x + hsp), (y - yplus), obj_solid) && yplus <= abs((1 * hsp)))
            yplus += 1
        if place_meeting((x + hsp), (y - yplus), obj_solid)
        {
            while (!(place_meeting((x + sign(hsp)), y, obj_solid)))
                x += sign(hsp)
            if (argument0 == 1)
                hsp = (-hsp)
            else
                hsp = 0
        }
        else
            y -= yplus
    }
    if (object_index == obj_player)
    {
        if (hitfreeze <= 0)
            x += hsp
    }
    else
        x += hsp
    if ((!(place_meeting(x, y, obj_solid))) && vsp >= 0 && place_meeting(x, ((y + 2) + abs(hsp)), obj_solid))
    {
        while (!(place_meeting(x, (y + 1), obj_solid)))
            y += 1
    }
}

