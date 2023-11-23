if (hat == 0 || room == rm_rank || room == rm_timesup)
    visible = false
else
    visible = true
switch hat
{
    case 1:
        sprite_index = spr_hat_cylinder
        image_speed = 0
        break
    case 2:
        sprite_index = spr_hat_demo2hats
        image_index = 0
        image_speed = 0
        break
    case 3:
        sprite_index = spr_hat_demo2hats
        image_index = 1
        image_speed = 0
        break
    case 4:
        sprite_index = spr_hat_demo2hats
        image_index = 2
        image_speed = 0
        break
    case 5:
        sprite_index = spr_hat_demo2hats
        image_index = 3
        image_speed = 0
        break
    case 6:
        sprite_index = spr_hat_demo2hats
        image_index = 4
        image_speed = 0
        break
    case 7:
        sprite_index = spr_hat_demo2hats
        image_index = 5
        image_speed = 0
        break
    case 8:
        sprite_index = spr_hat_demo2hats
        image_index = 6
        image_speed = 0
        break
    case 9:
        sprite_index = spr_hat_demo2hats
        image_index = 7
        image_speed = 0
        break
}

if instance_exists(targ)
{
    x = targ.x
    y = (targ.bbox_top - 32)
    image_xscale = targ.xface
}
