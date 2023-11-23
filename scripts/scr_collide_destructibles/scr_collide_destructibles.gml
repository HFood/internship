function scr_collide_destructibles() //gml_Script_scr_collide_destructibles
{
    if (vsp <= 0.5 && (state == 57 || state == 16 || state == 5 || state == 62 || state == 69 || state == 89))
    {
        if place_meeting(x, (y - 1), obj_destroyable)
        {
            with (instance_place(x, (y - 1), obj_destroyable))
            {
                instance_destroy()
                with (other.id)
                {
                    if (state != 62 && state != 16)
                        vsp = 0
                }
            }
        }
    }
    if (vsp >= 0 && (state == 73 || state == 76))
    {
        if place_meeting(x, ((y + vsp) + 2), obj_destroyable)
        {
            with (instance_place(x, ((y + vsp) + 2), obj_destroyable))
                instance_destroy()
        }
    }
    if (state == 73 || state == 76)
    {
        if (place_meeting(x, (y + 1), obj_metalbox) && bodyslam_serious == 1)
        {
            with (instance_place(x, (y + 1), obj_metalbox))
                instance_destroy()
        }
    }
    if (state == 21)
    {
        with (obj_destroyable)
        {
            if place_meeting((x - obj_player.hsp), y, obj_player)
            {
                with (obj_player)
                    instance_destroy(other.id)
            }
        }
    }
    with (obj_enemy)
    {
        if (place_meeting((x + hsp), y, obj_destroyable) && thrown == 1)
            instance_destroy(instance_place((x + hsp), y, obj_destroyable))
        if (place_meeting(x, (y + vsp), obj_destroyable) && thrown == 1)
            instance_destroy(instance_place((x + vsp), y, obj_destroyable))
    }
}

