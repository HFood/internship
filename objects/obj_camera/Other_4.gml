if instance_exists(obj_player)
{
    with (obj_player)
    {
        if place_meeting(x, y, obj_levelgate_trigger)
            other.camyplus = -80
    }
    x = obj_player.x
    y = obj_player.y
}
view_wport[0] = 960
view_hport[0] = 540
