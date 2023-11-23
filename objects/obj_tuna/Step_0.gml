scr_enemy_step()
scr_player_collision(0, 0)
switch state
{
    case "normal":
        if (collision_line((x - 224), y, (x + 224), y, obj_player, false, true) && (!(collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, true))) && dash_delay == 0)
        {
            image_index = 0
            if (x > obj_player.x)
                image_xscale = -1
            else
                image_xscale = 1
            state = "dashstart"
            dashdur = 40
            dash_delay = 30
        }
        if (!(place_meeting(x, y, obj_water)))
        {
            stunxsc = 1.25
            stunysc = 0.75
            scaretime = 0
            stuntime = 120
            direction = point_direction(x, (y + 1), x, y)
            speed = 1
            scr_1sound(sfx_stun)
            hsp = (lengthdir_x(speed, direction) * 8)
            vsp = (lengthdir_y(speed, direction) * 8)
            speed = 0
            state = "stun"
            stun_delay = 8
        }
        scr_enemy_normal()
        break
    case "stun":
        scr_enemy_stun()
        break
    case "tuna_heat":
        scr_enemy_tuna_heat()
        break
    case "dashstart":
        scr_enemy_dashstart()
        break
    case "dash":
        scr_enemy_dash()
        break
    case "scared":
        scr_enemy_scared()
        break
    case "hitfreeze":
        scr_enemy_hitfreeze()
        break
    case "deathtackle":
        scr_enemy_deathtackle()
        break
}

