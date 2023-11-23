if (other.tauntduration > 0 && sprayed == 0)
{
    global.combotimer += (global.combotimer_full / 2)
    global.score += 150
    with (instance_create_depth(x, y, -1, obj_textfloat))
        _score = 150
    audio_stop_sound(sfx_taunt)
    scr_sound(asset_get_index(("sfx_graffiti" + string(irandom_range(1, 2)))))
    global.graffitis++
    ds_list_add(global.saveroom, id)
    sprayed = 1
}
