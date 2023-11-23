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
        if instance_exists(obj_player)
        {
            if (obj_player.hsp == 0)
                sprite_index = spr_boxboy_idle
            else
                sprite_index = spr_boxboy_walk
            if (global.key > 0)
            {
                ds_queue_enqueue(followQueue, obj_keybuddy.x)
                ds_queue_enqueue(followQueue, obj_keybuddy.y)
            }
            else
            {
                ds_queue_enqueue(followQueue, obj_player.x)
                ds_queue_enqueue(followQueue, obj_player.y)
            }
            LAG_STEPS = 10
            if (ds_queue_size(followQueue) > (LAG_STEPS * 2))
            {
                x = ds_queue_dequeue(followQueue)
                y = ds_queue_dequeue(followQueue)
            }
            image_xscale = obj_player.image_xscale
        }
        break
    case "delivered":
        image_speed = 1
        sprite_index = spr_boxboy_wait1
        break
}

