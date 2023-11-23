type = 1
depth = 19
hp = 1
scr_random()
scr_destroyable_create()
switch global.level
{
    case "crateburg":
        sprite_index = spr_destroyable_small_crateburg
        image_speed = 0
        image_index = irandom_range(0, (image_number - 1))
        break
    case "train":
        sprite_index = spr_destroyable_small_train
        image_speed = 0
        image_index = irandom_range(0, (image_number - 1))
        break
}

