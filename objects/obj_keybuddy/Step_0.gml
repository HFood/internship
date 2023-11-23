if (appear_effect > 0)
    appear_effect--
else
    image_alpha = 1
switch state
{
    case "taunt":
        image_speed = 0
        break
    case "follow":
        image_speed = 1
        sprite_index = spr_keybuddy
        if instance_exists(obj_player)
        {
            ds_queue_enqueue(followQueue, obj_player.spotlight1)
            ds_queue_enqueue(followQueue, obj_player.y)
            LAG_STEPS = 10
            if (ds_queue_size(followQueue) > (LAG_STEPS * 2))
            {
                x = ds_queue_dequeue(followQueue)
                y = ds_queue_dequeue(followQueue)
            }
            image_xscale = obj_player.image_xscale
        }
        switch fly_y_dir
        {
            case 1:
                if (fly_y < 2)
                    fly_vsp += 0.005
                else
                    fly_y_dir = -1
                break
            case -1:
                if (fly_y > -2)
                    fly_vsp -= 0.005
                else
                    fly_y_dir = 1
                break
        }

        fly_vsp = clamp(fly_vsp, -0.2, 0.2)
        fly_y += fly_vsp
        switch fly_x_dir
        {
            case 1:
                if (fly_x < 2)
                    fly_hsp += 0.009
                else
                    fly_x_dir = -1
                break
            case -1:
                if (fly_x > -2)
                    fly_hsp -= 0.009
                else
                    fly_x_dir = 1
                break
        }

        fly_hsp = clamp(fly_hsp, -0.2, 0.2)
        fly_x += fly_hsp
        break
    case "shake":
        image_speed = 1
        sprite_index = spr_keybuddy_shake
        shk_x = irandom_range(-16, 16)
        shk_y = irandom_range(-16, 16)
        x = (curx + shk_x)
        y = (cury + shk_y)
        if (timetodie > 0)
            timetodie--
        else
        {
            scr_sound(sfx_hit)
            with (instance_create_depth(x, y, -1004, obj_debris))
            {
                particles = 1
                hsp = choose(-8, 8)
                vsp = -8
                sprite_index = spr_keybuddy_dead
            }
            instance_destroy()
        }
        break
}

