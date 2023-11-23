scr_enemy_step()
scr_player_collision(0, 0)
if (hitfreeze > 0)
    scr_enemy_hitfreeze()
else
{
    switch state
    {
        case "stun":
            scr_enemy_stun()
            break
        case "deathtackle":
            scr_enemy_deathtackle()
            break
    }

}
