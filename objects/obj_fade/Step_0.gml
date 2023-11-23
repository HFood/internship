switch type
{
    case "door":
        if (yeah == 0)
        {
            if (alpha < 1)
                alpha += 0.1
            else
                yeah = 1
        }
        else if (yeah2 == 1)
        {
            if (alpha > 0)
                alpha -= 0.1
            else
                instance_destroy()
        }
        if instance_exists(obj_player)
        {
            if (obj_player.state == "doorexit")
                yeah2 = 1
        }
        break
    case "hall":
        if (yeah == 0)
        {
            if (alpha < 1)
                alpha += 0.15
            else
            {
                if instance_exists(obj_player)
                {
                    with (obj_player)
                    {
                        with (instance_place(x, y, obj_nextroom))
                        {
                            room_goto(rm)
                            obj_player.x = targx
                            obj_player.y = targy
                            obj_camera.x = targx
                            obj_camera.y = targy
                            obj_player.image_xscale = sign(image_xscale)
                        }
                        hallwayenter = 0
                    }
                }
                yeah = 1
            }
        }
        else if (yeah2 == 1)
        {
            if (alpha > 0)
                alpha -= 0.15
            else
                instance_destroy()
        }
        if instance_exists(obj_player)
        {
            if (obj_player.state != "roomenter")
                yeah2 = 1
        }
        break
    case "pause":
        if (yeah == 0)
        {
            if (alpha < 1)
                alpha += 0.15
            else
            {
                instance_deactivate_all(true)
                instance_activate_object(obj_game)
                yeah = 1
            }
        }
        else if (yeah2 == 1)
        {
            if (alpha > 0)
                alpha -= 0.15
            else
                instance_destroy()
        }
        break
}

