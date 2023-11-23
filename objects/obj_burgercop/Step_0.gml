scr_enemy_step()
scr_player_collision(0, 0)
switch state
{
    case "normal":
        scr_enemy_normal()
        break
    case "stun":
        scr_enemy_stun()
        break
    case "hitfreeze":
        scr_enemy_hitfreeze()
        break
    case "deathtackle":
        scr_enemy_deathtackle()
        break
}

