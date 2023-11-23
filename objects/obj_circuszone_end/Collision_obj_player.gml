if (global.fun_meter >= global.fun_meter_good)
{
    global.combotimer += global.combotimer_full
    with (instance_create_depth(0, 0, 0, obj_pointgiver))
        points = 1000
    scr_1sound(sfx_giantcollect)
}
else if (global.fun_meter >= (global.fun_meter_good * 0.75))
{
    global.combotimer += global.combotimer_full
    with (instance_create_depth(0, 0, 0, obj_pointgiver))
        points = 750
    scr_1sound(sfx_bigcollect)
}
else if (global.fun_meter >= (global.fun_meter_good * 0.5))
{
    global.combotimer += global.combotimer_full
    with (instance_create_depth(0, 0, 0, obj_pointgiver))
        points = 500
    scr_1sound(sfx_bigcollect)
}
else if (global.fun_meter >= (global.fun_meter_good * 0.25))
{
    global.combotimer += global.combotimer_full
    with (instance_create_depth(0, 0, 0, obj_pointgiver))
        points = 250
    scr_1sound(sfx_munch)
}
else
{
    with (instance_create_depth(x, y, -1, obj_textfloat))
        _score = 0
    scr_1sound(sfx_tick)
}
with (obj_parallax)
    circus_audience_joy = 320
global.fun_meter = -1
global.fun_meter_visible = 0
instance_destroy()
