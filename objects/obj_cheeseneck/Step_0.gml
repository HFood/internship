scr_enemy_step()
scr_player_collision(0, 0)
switch state
{
    case "normal":
        if (collision_line((x - 192), y, (x + 192), y, obj_player, false, true) && (!(collision_line(x, y, obj_player.x, y, obj_solid, false, true))) && throw_delay == 0 && obj_player.state != "tackle2")
        {
            if (reaction_time > 0)
                reaction_time--
            else
            {
                reaction_time = 15
                image_xscale = (-(sign((x - obj_player.x))))
                image_index = 0
                state = "cheeseneck_shoot"
            }
        }
        scr_enemy_normal()
        break
    case "stun":
        scr_enemy_stun()
        break
    case "turn":
        scr_enemy_turn()
        break
    case "cheeseneck_shoot":
        scr_enemy_cheeseneck_shoot()
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

