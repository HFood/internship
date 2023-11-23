if instance_exists(obj_player)
{
    if (global.camera_smooth == 1)
    {
        global.camx = clamp(obj_camera.x, 480, (room_width - 480))
        global.camy = clamp(obj_camera.y, 270, (room_height - 270))
    }
    else if (global.coop == 1)
    {
        global.camx = clamp(((round(((obj_player.x + obj_player2.x) / 2)) + obj_camera.shk_x) + obj_camera.mach_x), 480, (room_width - 480))
        global.camy = clamp(((round(((obj_player.y + obj_player2.y) / 2)) + obj_camera.shk_y) + obj_camera.camyplus), 270, (room_height - 270))
    }
    else
    {
        global.camx = clamp(((obj_player.x + obj_camera.shk_x) + obj_camera.mach_x), 480, (room_width - 480))
        global.camy = clamp(((obj_player.y + obj_camera.shk_y) + obj_camera.camyplus), 270, (room_height - 270))
    }
}
camera_set_view_pos(view_camera[0], global.camx, global.camy)
global.camera_x = (global.camx - 480)
global.camera_y = (global.camy - 270)
if (global.coop == 1)
    var yscale = max(1, (abs((obj_player2.x - obj_player.x)) / (view_wport[0] - (obj_camera.border * 2))), (abs((((((obj_player2.y + obj_camera.shk_x) + 0) - obj_player.y) + obj_camera.shk_y) + 0)) / (view_hport[0] - (obj_camera.border * 2))))
else
    yscale = 1
if layer_exists("Background")
{
    var _lay0 = layer_get_id("Background")
    var _bg0 = layer_background_get_id(_lay0)
    layer_background_xscale(_bg0, yscale)
    layer_background_yscale(_bg0, yscale)
}
if layer_exists("Backgrounds_1")
{
    var _lay1 = layer_get_id("Backgrounds_1")
    var _bg1 = layer_background_get_id(_lay1)
    layer_background_xscale(_bg1, yscale)
    layer_background_yscale(_bg1, yscale)
}
if layer_exists("Backgrounds_2")
{
    var _lay2 = layer_get_id("Backgrounds_2")
    var _bg2 = layer_background_get_id(_lay2)
    layer_background_xscale(_bg2, yscale)
    layer_background_yscale(_bg2, yscale)
}
if layer_exists("Backgrounds_3")
{
    var _lay3 = layer_get_id("Backgrounds_3")
    var _bg3 = layer_background_get_id(_lay3)
    layer_background_xscale(_bg3, yscale)
    layer_background_yscale(_bg3, yscale)
}
if layer_exists("Backgrounds_4")
{
    var _lay4 = layer_get_id("Backgrounds_4")
    var _bg4 = layer_background_get_id(_lay4)
    layer_background_xscale(_bg4, yscale)
    layer_background_yscale(_bg4, yscale)
}
if (room != rm_rank && global.insecret == 0)
{
    switch global.level
    {
        case "rooftop":
            if (room == rm_rooftop1 || room == rm_rooftop1a || room == rm_rooftop2 || room == rm_rooftop3 || room == rm_rooftop4)
            {
                layer_x("Background", (global.camera_x * 0.25))
                layer_y("Background", (global.camera_y * 0.25))
            }
            else
            {
                layer_x("Backgrounds_3", (global.camera_x * 0.15))
                layer_y("Backgrounds_3", global.camera_y)
                layer_x("Backgrounds_2", (global.camera_x * 0.3))
                layer_y("Backgrounds_2", global.camera_y)
                layer_x("Backgrounds_1", (global.camera_x + lay_hsp))
                layer_y("Backgrounds_1", global.camera_y)
                layer_x("Background", global.camera_x)
                layer_y("Background", global.camera_y)
            }
            break
        case "ancient":
            if (room == rm_ancient1 || room == rm_ancient2 || room == rm_ancient3 || room == rm_ancient4 || room == rm_ancient5 || room == rm_ancient5a)
            {
                layer_x("Backgrounds_1", (global.camera_x * 0.8))
                layer_y("Backgrounds_1", global.camera_y)
                layer_x("Background", global.camera_x)
                layer_y("Background", global.camera_y)
            }
            else
            {
                layer_x("Background", (global.camera_x * 0.25))
                layer_y("Background", (global.camera_y * 0.25))
            }
            break
        case "cave":
            if (room == rm_cave1 || room == rm_cave1a || room == rm_cave2 || room == rm_cave3 || room == rm_cave3a || room == rm_cave4)
            {
                layer_x("Background", global.camera_x)
                layer_y("Background", global.camera_y)
            }
            else
            {
                layer_x("Background", (global.camera_x * 0.25))
                layer_y("Background", (global.camera_y * 0.25))
            }
            break
        case "resort":
            if (room == rm_resort4 || room == rm_resort5 || room == rm_resort8)
            {
                layer_x("Backgrounds_2", (global.camera_x * 0.15))
                layer_y("Backgrounds_2", global.camera_y)
                layer_x("Backgrounds_1", (global.camera_x * 0.45))
                layer_y("Backgrounds_1", global.camera_y)
                layer_x("Background", global.camera_x)
                layer_y("Background", global.camera_y)
            }
            else if (room == rm_resort1 || room == rm_resort2 || room == rm_resort3)
            {
                layer_x("Background", (global.camera_x * 0.25))
                layer_y("Background", global.camera_y)
            }
            else
            {
                layer_x("Background", global.camera_x)
                layer_y("Background", global.camera_y)
            }
            break
        case "urban":
            if (room == rm_urban1 || room == rm_urban2 || room == rm_cave2 || room == rm_cave3 || room == rm_cave3a || room == rm_cave4)
            {
                layer_x("Backgrounds_3", (global.camera_x * 0.2))
                layer_y("Backgrounds_3", global.camera_y)
                layer_x("Backgrounds_2", (global.camera_x * 0.4))
                layer_y("Backgrounds_2", global.camera_y)
                layer_x("Backgrounds_1", (global.camera_x * 0.5))
                layer_y("Backgrounds_1", global.camera_y)
                layer_x("Background", (global.camera_x + lay_hsp))
                layer_y("Background", global.camera_y)
            }
            else
            {
                layer_x("Background", (global.camera_x * 0.25))
                layer_y("Background", (global.camera_y * 0.25))
            }
            break
        case "crateburg":
            layer_x("Backgrounds_4", (global.camera_x * 0.15))
            layer_y("Backgrounds_4", global.camera_y)
            layer_x("Backgrounds_3", (global.camera_x * 0.55))
            layer_y("Backgrounds_3", global.camera_y)
            layer_x("Backgrounds_2", (global.camera_x * 0.8))
            layer_y("Backgrounds_2", global.camera_y)
            layer_x("Backgrounds_1", (global.camera_x + lay_hsp))
            layer_y("Backgrounds_1", global.camera_y)
            layer_x("Background", global.camera_x)
            layer_y("Background", global.camera_y)
            break
        case "freezer":
            if (room == rm_freezer5 || room == rm_freezer5a || room == rm_freezer6 || room == rm_freezer7 || room == rm_freezer10 || room == rm_freezer11 || room == rm_freezer12)
            {
                layer_x("Background", global.camera_x)
                layer_y("Background", global.camera_y)
            }
            else
            {
                layer_x("Background", (global.camera_x * 0.25))
                layer_y("Background", (global.camera_y * 0.25))
            }
            break
        case "circus":
            if (global.escape == 0)
            {
                if (circus_audience_joy > 0)
                {
                    if (layer_background_get_sprite(_bg0) == 835)
                        layer_background_sprite(_bg0, spr_bg_circus2c)
                    circus_audience_joy -= 2
                }
                else if (layer_background_get_sprite(_bg0) == 736)
                    layer_background_sprite(_bg0, spr_bg_circus2)
            }
            if (layer_background_get_sprite(_bg0) == 835 || layer_background_get_sprite(_bg0) == 736 || layer_background_get_sprite(_bg0) == 341)
            {
                layer_x("Background", global.camera_x)
                layer_y("Background", global.camera_y)
            }
            else
            {
                layer_x("Background", (global.camera_x * 0.25))
                layer_y("Background", global.camera_y)
            }
            break
        case "train":
            layer_y("Backgrounds_2", global.camera_y)
            layer_y("Backgrounds_1", global.camera_y)
            layer_x("Background", global.camera_x)
            layer_y("Background", global.camera_y)
            break
        case "ship":
            if (room == rm_ship1 || room == rm_ship1a || room == rm_ship2)
            {
                layer_x("Background", (global.camera_x * 0.25))
                layer_y("Background", (global.camera_y * 0.25))
            }
            else
            {
                layer_x("Background", global.camera_x)
                layer_y("Background", global.camera_y)
            }
            break
        case "tutorial":
            layer_x("Background", (global.camera_x * 0.1))
            layer_y("Background", (global.camera_y * 0.1))
            break
    }

}
if (room == rm_hub || room == rm_gallery)
{
    layer_x("Background", (global.camera_x * 0.1))
    layer_y("Background", (global.camera_y * 0.1))
}
if (room == rm_hub_floor1 || room == rm_hub_floor1_secret1)
{
    layer_x("Background", (global.camera_x * 0.25))
    layer_y("Background", global.camera_y)
}
if (room == rm_roomomo)
{
    layer_x("Background", global.camera_x)
    layer_y("Background", global.camera_y)
}
if (room == rm_hub_floor2)
{
    layer_x("Backgrounds_1", (global.camera_x * 0.1))
    layer_y("Backgrounds_1", global.camera_y)
    layer_x("Background", (global.camera_x * 0.25))
    layer_y("Background", global.camera_y)
}
if (lay_hsp < 960)
    lay_hsp += 0.4
else
    lay_hsp = 0
