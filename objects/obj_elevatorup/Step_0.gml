if instance_exists(obj_player)
{
    switch door_floor
    {
        case 1:
            if (global.levels_done >= 4)
                sprite_index = spr_elevatordoor_open
            else
                sprite_index = spr_elevatordoor_closed
            if (place_meeting(x, y, obj_player) && global.levels_done >= 4 && obj_player.grounded && obj_player.crouch == 0 && obj_player.spinning == 0 && obj_player.grabbing == 0 && (obj_player.state == "normal" || obj_player.state == "tackle1" || obj_player.state == "tackle2"))
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
            break
        case 2:
            if (global.boss2_done == 1)
                sprite_index = spr_elevatordoor_open
            else
                sprite_index = spr_elevatordoor_closed
            if (place_meeting(x, y, obj_player) && global.boss2_done == 1 && obj_player.grounded && obj_player.crouch == 0 && obj_player.spinning == 0 && obj_player.grabbing == 0 && (obj_player.state == "normal" || obj_player.state == "tackle1" || obj_player.state == "tackle2"))
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
            break
        case 3:
            if (global.boss3_done == 1)
                sprite_index = spr_elevatordoor_open
            else
                sprite_index = spr_elevatordoor_closed
            if (place_meeting(x, y, obj_player) && global.boss3_done == 1 && obj_player.grounded && obj_player.crouch == 0 && obj_player.spinning == 0 && obj_player.grabbing == 0 && (obj_player.state == "normal" || obj_player.state == "tackle1" || obj_player.state == "tackle2"))
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
            break
        case 4:
            if (global.boss4_done == 1)
                sprite_index = spr_elevatordoor_open
            else
                sprite_index = spr_elevatordoor_closed
            if (place_meeting(x, y, obj_player) && global.boss4_done == 1 && obj_player.grounded && obj_player.crouch == 0 && obj_player.spinning == 0 && obj_player.grabbing == 0 && (obj_player.state == "normal" || obj_player.state == "tackle1" || obj_player.state == "tackle2"))
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
            break
        case 5:
            if (global.boss5_done == 1)
                sprite_index = spr_elevatordoor_open
            else
                sprite_index = spr_elevatordoor_closed
            if (place_meeting(x, y, obj_player) && global.boss5_done == 1 && obj_player.grounded && obj_player.crouch == 0 && obj_player.spinning == 0 && obj_player.grabbing == 0 && (obj_player.state == "normal" || obj_player.state == "tackle1" || obj_player.state == "tackle2"))
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
            break
    }

}
if place_meeting(x, y, obj_doorA)
    doornum = "A"
if place_meeting(x, y, obj_doorB)
    doornum = "B"
if place_meeting(x, y, obj_doorC)
    doornum = "C"
if place_meeting(x, y, obj_doorD)
    doornum = "D"
