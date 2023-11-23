if (ds_list_find_index(global.saveroom, id) != -1)
    instance_destroy()
else
{
    if (!instance_exists(obj_camera))
        instance_create_depth(x, y, 1, obj_camera)
    if (!instance_exists(obj_scorekeeper))
        instance_create_depth(x, y, 1, obj_scorekeeper)
    if (!instance_exists(obj_parallax))
        instance_create_depth(x, y, 1, obj_parallax)
    instance_destroy(obj_player)
    with (instance_create_depth(x, y, 1, obj_player))
    {
        character = global.character
        scr_playerspr()
    }
    if (global.coop == 1)
    {
        instance_destroy(obj_player2)
        with (instance_create_depth(x, y, 1, obj_player2))
        {
            if (global.character == "intern")
                character = "backy"
            else
                character = "intern"
            scr_playerspr()
        }
    }
    if (withshock == 0)
    {
        with (obj_player)
            doorexit_shocked = 0
    }
    if (room == rm_intro)
        obj_player.state = "intro_scooter"
    instance_destroy()
}
