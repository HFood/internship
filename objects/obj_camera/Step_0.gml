if instance_exists(obj_player)
{
    with (obj_player)
    {
        if place_meeting(x, y, obj_levelgate_trigger)
        {
            if (other.camyplus > -80)
                other.camyplus -= 2
        }
        else if (other.camyplus < 0)
            other.camyplus += 2
    }
    if (global.camera_smooth == 1)
    {
        if (global.coop == 1)
        {
            var yscale = max(1, (abs((obj_player2.x - obj_player.x)) / (view_wport[0] - border)), (abs((((obj_player2.y + shk_x) - obj_player.y) + shk_y)) / (view_hport[0] - border)))
            yscale = max(1, (abs((obj_player2.x - obj_player.x)) / (view_wport[0] - (border * 2))), (abs((((((obj_player2.y + shk_x) + 0) - obj_player.y) + shk_y) + 0)) / (view_hport[0] - (border * 2))))
            var hsize = (yscale * view_wport[0])
            var wsize = (yscale * view_hport[0])
            hsize = max(hsize, 960)
            wsize = max(wsize, 540)
            camera_set_view_size(view_camera[0], hsize, wsize)
            x += (((clamp((round(((obj_player.x + obj_player2.x) / 2)) + mach_x), 480, (room_width - 480)) - x) * global.camera_smooth_strength) + shk_x)
            y += (((clamp((round(((obj_player.y + obj_player2.y) / 2)) + camyplus), 270, (room_height - 270)) - y) * global.camera_smooth_strength) + shk_y)
        }
        else
        {
            camera_set_view_size(view_camera[0], 960, 540)
            x += (((clamp((obj_player.x + mach_x), 480, (room_width - 480)) - x) * global.camera_smooth_strength) + shk_x)
            y += (((clamp((obj_player.y + camyplus), 270, (room_height - 270)) - y) * global.camera_smooth_strength) + shk_y)
        }
    }
    else if (global.coop == 1)
    {
        yscale = max(1, (abs((obj_player2.x - obj_player.x)) / (view_wport[0] - border)), (abs((((obj_player2.y + shk_x) - obj_player.y) + shk_y)) / (view_hport[0] - border)))
        yscale = max(1, (abs((obj_player2.x - obj_player.x)) / (view_wport[0] - (border * 2))), (abs((((((obj_player2.y + shk_x) + 0) - obj_player.y) + shk_y) + 0)) / (view_hport[0] - (border * 2))))
        hsize = (yscale * view_wport[0])
        wsize = (yscale * view_hport[0])
        hsize = max(hsize, 960)
        wsize = max(wsize, 540)
        camera_set_view_size(view_camera[0], hsize, wsize)
        x = (clamp((round(((obj_player.x + obj_player2.x) / 2)) + mach_x), 480, (room_width - 480)) + shk_x)
        y = (clamp((round(((obj_player.y + obj_player2.y) / 2)) + camyplus), 270, (room_height - 270)) + shk_y)
    }
    else
    {
        camera_set_view_size(view_camera[0], 960, 540)
        x = (clamp((obj_player.x + mach_x), 480, (room_width - 480)) + shk_x)
        y = (clamp((obj_player.y + camyplus), 270, (room_height - 270)) + shk_y)
    }
}
if (global.escape == 1 || global.level == "train")
{
    shk_x = irandom_range(((-shk_strength) * 1.2), (shk_strength * 1.2))
    shk_y = irandom_range(((-shk_strength) * 1.2), (shk_strength * 1.2))
    shk_strength = 1
}
else
{
    shk_x = irandom_range(((-shk_strength) * 1.2), (shk_strength * 1.2))
    shk_y = irandom_range(((-shk_strength) * 1.2), (shk_strength * 1.2))
    if (shk_strength > 0.5)
        shk_strength -= 0.5
    else
        shk_strength = 0
}
