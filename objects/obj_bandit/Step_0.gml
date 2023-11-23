scr_enemy_step()
scr_player_collision(0, 0)
switch state
{
    case "normal":
        if (collision_line((x - 360), y, (x + 360), y, obj_player, false, true) && (!(collision_line(x, y, obj_player.x, y, obj_solid, false, true))) && throw_delay == 0 && obj_player.state != "tackle2")
        {
            image_xscale = (-(sign((x - obj_player.x))))
            image_index = 0
            state = "bombthrow2"
        }
        if (collision_line((x - 360), y, (x + 360), y, obj_player, false, true) && (!(collision_line(x, y, obj_player.x, y, obj_solid, false, true))) && obj_player.tauntduration > 0)
            throw_delay = 0
        scr_enemy_normal()
        break
    case "stun":
        scr_enemy_stun()
        break
    case "turn":
        scr_enemy_turn()
        break
    case "bombthrow2":
        scr_enemy_bombthrow2()
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

