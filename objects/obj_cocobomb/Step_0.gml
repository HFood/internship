scr_enemy_step()
scr_player_collision(0, 0)
switch state
{
    case "cocobomb_idle":
        scr_enemy_cocobomb_idle()
        break
    case "cocobomb_start":
        scr_enemy_cocobomb_start()
        break
    case "normal":
        scr_enemy_normal()
        if (cocobomb_explosion > 0)
            cocobomb_explosion--
        else
        {
            image_index = 0
            state = "explode"
        }
        break
    case "stun":
        scr_enemy_stun()
        break
    case "explode":
        scr_enemy_explode()
        break
    case "hitfreeze":
        scr_enemy_hitfreeze()
        break
    case "deathtackle":
        scr_enemy_deathtackle()
        break
}

