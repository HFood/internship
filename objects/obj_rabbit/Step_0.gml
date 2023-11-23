scr_enemy_step()
scr_player_collision(0, 0)
switch state
{
    case "normal":
        if (collision_line(x, y, (x + (160 * image_xscale)), y, obj_player, false, true) && (!(collision_line(x, y, (x + (160 * image_xscale)), y, obj_solid, false, true))))
        {
            with (instance_create_depth(x, y, 30, obj_ghostmove))
            {
                vsp = -4
                dis_spd = 0.08
                plain = 1
                image_blend = c_red
                sprite_index = other.sprite_index
                image_index = other.image_index
                image_xscale = other.image_xscale
                image_yscale = other.image_yscale
            }
            with (instance_create_depth(x, y, 30, obj_ghostmove))
            {
                vsp = 4
                dis_spd = 0.08
                plain = 1
                image_blend = c_green
                sprite_index = other.sprite_index
                image_index = other.image_index
                image_xscale = other.image_xscale
                image_yscale = other.image_yscale
            }
            scr_sound(sfx_projectile)
            vsp = -7
            angspr = spr_rabbit_runstart
            state = "runstart"
        }
        scr_enemy_normal()
        break
    case "stun":
        scr_enemy_stun()
        break
    case "turn":
        scr_enemy_turn()
        break
    case "runstart":
        scr_enemy_runstart()
        break
    case "run":
        scr_enemy_run()
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
    case "rabbit_heat":
        scr_enemy_rabbit_heat()
        break
}

