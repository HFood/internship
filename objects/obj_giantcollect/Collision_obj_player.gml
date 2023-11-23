global.combotimer = global.combotimer_full
global.score += 1000
scr_sound(sfx_giantcollect)
with (obj_scorekeeper)
    tv_scoreup = 0
with (instance_create_depth(x, y, -1, obj_textfloat))
    _score = 1000
instance_destroy()
