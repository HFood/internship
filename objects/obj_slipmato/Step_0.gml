scr_enemy_step()
scr_player_collision(0, 0)
switch state
{
    case "normal":
        scr_enemy_normal()
        if (!instance_exists(sauce_id))
        {
            if (sauce_dur > 0)
                sauce_dur--
            else if grounded
            {
                scr_1sound(sfx_projectile)
                sauce_id = instance_create_depth(x, (bbox_bottom + 16), 1, obj_sauce)
                sauce_dur = 200
            }
        }
        break
    case "stun":
        scr_enemy_stun()
        break
    case "turn":
        scr_enemy_turn()
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

