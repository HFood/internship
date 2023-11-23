if (global.level == "hub" && global.lvl_exit_rm != -4)
{
    if (global.coop == 1)
    {
        if (global.lvl_exit_x != 0)
        {
            x = global.lvl_exit_x
            obj_player2.x = global.lvl_exit_x
            global.lvl_exit_x = 0
        }
        if (global.lvl_exit_y != 0)
        {
            y = global.lvl_exit_y
            obj_player2.y = global.lvl_exit_y
            global.lvl_exit_y = 0
        }
    }
    else
    {
        if (global.lvl_exit_x != 0)
        {
            x = global.lvl_exit_x
            global.lvl_exit_x = 0
        }
        if (global.lvl_exit_y != 0)
        {
            y = global.lvl_exit_y
            global.lvl_exit_y = 0
        }
    }
    if (global.lvl_exit_rm != -4)
    {
        room_goto(global.lvl_exit_rm)
        global.lvl_exit_rm = -4
    }
}
else
{
    switch doornum
    {
        case "A":
            if instance_exists(obj_doorA)
            {
                if (hallway_dir == 2)
                {
                    x = (obj_doorA.bbox_left + (obj_doorA.sprite_width * vertical_xperc))
                    y = (obj_doorA.y + 34)
                    while instance_place(x, y, obj_solid)
                    {
                        var sol_id = instance_place(x, y, obj_solid).id
                        if (x < sol_id.x)
                            x--
                        else
                            x++
                    }
                    image_xscale = vertical_xsc
                    if (state == "wallrun")
                    {
                        while (!(instance_place((x + image_xscale), y, obj_solid)))
                            x += image_xscale
                    }
                    hallway_dir = 0
                }
                else if (hallway_dir == 3)
                {
                    x = (obj_doorA.bbox_left + (obj_doorA.sprite_width * vertical_xperc))
                    y = (obj_doorA.y - 114)
                    while instance_place(x, y, obj_solid)
                    {
                        sol_id = instance_place(x, y, obj_solid).id
                        if (x < sol_id.x)
                            x--
                        else
                            x++
                    }
                    image_xscale = vertical_xsc
                    if (state == "wallrun")
                    {
                        while (!(instance_place((x + image_xscale), y, obj_solid)))
                            x += image_xscale
                    }
                    hallway_dir = 0
                }
                else if (hallway_dir == 1)
                {
                    x = (obj_doorA.x + 160)
                    y = (obj_doorA.y - 34)
                    hallway_dir = 0
                }
                else if (hallway_dir == -1)
                {
                    x = (obj_doorA.x - 160)
                    y = (obj_doorA.y - 34)
                    hallway_dir = 0
                }
                else
                {
                    x = obj_doorA.x
                    y = (obj_doorA.y - 34)
                }
            }
            break
        case "B":
            if instance_exists(obj_doorB)
            {
                if (hallway_dir == 2)
                {
                    x = (obj_doorB.bbox_left + (obj_doorB.sprite_width * vertical_xperc))
                    y = (obj_doorB.y + 34)
                    while instance_place(x, y, obj_solid)
                    {
                        sol_id = instance_place(x, y, obj_solid).id
                        if (x < sol_id.x)
                            x--
                        else
                            x++
                    }
                    image_xscale = vertical_xsc
                    if (state == "wallrun")
                    {
                        while (!(instance_place((x + image_xscale), y, obj_solid)))
                            x += image_xscale
                    }
                    hallway_dir = 0
                }
                else if (hallway_dir == 3)
                {
                    x = (obj_doorB.bbox_left + (obj_doorB.sprite_width * vertical_xperc))
                    y = (obj_doorB.y - 114)
                    while instance_place(x, y, obj_solid)
                    {
                        sol_id = instance_place(x, y, obj_solid).id
                        if (x < sol_id.x)
                            x--
                        else
                            x++
                    }
                    image_xscale = vertical_xsc
                    if (state == "wallrun")
                    {
                        while (!(instance_place((x + image_xscale), y, obj_solid)))
                            x += image_xscale
                    }
                    hallway_dir = 0
                }
                else if (hallway_dir == 1)
                {
                    x = (obj_doorB.x + 160)
                    y = (obj_doorB.y - 34)
                    hallway_dir = 0
                }
                else if (hallway_dir == -1)
                {
                    x = (obj_doorB.x - 160)
                    y = (obj_doorB.y - 34)
                    hallway_dir = 0
                }
                else
                {
                    x = obj_doorB.x
                    y = (obj_doorB.y - 34)
                }
            }
            break
        case "C":
            if instance_exists(obj_doorC)
            {
                if (hallway_dir == 2)
                {
                    x = (obj_doorC.bbox_left + (obj_doorC.sprite_width * vertical_xperc))
                    y = (obj_doorC.y + 34)
                    while instance_place(x, y, obj_solid)
                    {
                        sol_id = instance_place(x, y, obj_solid).id
                        if (x < sol_id.x)
                            x--
                        else
                            x++
                    }
                    image_xscale = vertical_xsc
                    if (state == "wallrun")
                    {
                        while (!(instance_place((x + image_xscale), y, obj_solid)))
                            x += image_xscale
                    }
                    hallway_dir = 0
                }
                else if (hallway_dir == 3)
                {
                    x = (obj_doorC.bbox_left + (obj_doorC.sprite_width * vertical_xperc))
                    y = (obj_doorC.y - 114)
                    while instance_place(x, y, obj_solid)
                    {
                        sol_id = instance_place(x, y, obj_solid).id
                        if (x < sol_id.x)
                            x--
                        else
                            x++
                    }
                    image_xscale = vertical_xsc
                    if (state == "wallrun")
                    {
                        while (!(instance_place((x + image_xscale), y, obj_solid)))
                            x += image_xscale
                    }
                    hallway_dir = 0
                }
                else if (hallway_dir == 1)
                {
                    x = (obj_doorC.x + 160)
                    y = (obj_doorC.y - 34)
                    hallway_dir = 0
                }
                else if (hallway_dir == -1)
                {
                    x = (obj_doorC.x - 160)
                    y = (obj_doorC.y - 34)
                    hallway_dir = 0
                }
                else
                {
                    x = obj_doorC.x
                    y = (obj_doorC.y - 34)
                }
            }
            break
        case "D":
            if instance_exists(obj_doorD)
            {
                if (hallway_dir == 2)
                {
                    x = (obj_doorD.bbox_left + (obj_doorD.sprite_width * vertical_xperc))
                    y = (obj_doorD.y + 34)
                    while instance_place(x, y, obj_solid)
                    {
                        sol_id = instance_place(x, y, obj_solid).id
                        if (x < sol_id.x)
                            x--
                        else
                            x++
                    }
                    image_xscale = vertical_xsc
                    if (state == "wallrun")
                    {
                        while (!(instance_place((x + image_xscale), y, obj_solid)))
                            x += image_xscale
                    }
                    hallway_dir = 0
                }
                else if (hallway_dir == 3)
                {
                    x = (obj_doorD.bbox_left + (obj_doorD.sprite_width * vertical_xperc))
                    y = (obj_doorD.y - 114)
                    while instance_place(x, y, obj_solid)
                    {
                        sol_id = instance_place(x, y, obj_solid).id
                        if (x < sol_id.x)
                            x--
                        else
                            x++
                    }
                    image_xscale = vertical_xsc
                    if (state == "wallrun")
                    {
                        while (!(instance_place((x + image_xscale), y, obj_solid)))
                            x += image_xscale
                    }
                    hallway_dir = 0
                }
                else if (hallway_dir == 1)
                {
                    x = (obj_doorD.x + 160)
                    y = (obj_doorD.y - 34)
                    hallway_dir = 0
                }
                else if (hallway_dir == -1)
                {
                    x = (obj_doorD.x - 160)
                    y = (obj_doorD.y - 34)
                    hallway_dir = 0
                }
                else
                {
                    x = obj_doorD.x
                    y = (obj_doorD.y - 34)
                }
            }
            break
    }

}
if (room == rm_rank)
    instance_destroy(stylin_particle)
if (room != rm_rank && room != rm_menu && room != rm_begin && object_index != obj_player2)
{
    var _checkpoint = instance_create_depth(x, (y + 18), 0, obj_spawnpoint)
    with (_checkpoint)
    {
        image_xscale = 2
        image_yscale = 2
    }
}
