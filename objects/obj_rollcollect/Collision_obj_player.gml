global.combotimer += 80
global.score += 25
scr_sound(sfx_munch)
with (instance_create_depth(x, y, -1, obj_textfloat))
    _score = 25
instance_destroy()
