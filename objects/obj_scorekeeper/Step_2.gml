global.score = max(global.score, 0)
global.combotimer = clamp(global.combotimer, 0, global.combotimer_full)
if instance_exists(obj_player)
{
    if (obj_player.x > (room_width - 192) && obj_player.y < 128)
    {
        if (tvyplus > -288)
            tvyplus -= 20
    }
    else if (tvyplus < 0)
        tvyplus += 20
    if (obj_player.x < 192 && obj_player.y < 128)
    {
        if (tv2yplus > -288)
            tv2yplus -= 20
    }
    else if (tv2yplus < 0)
        tv2yplus += 20
    if (obj_player.y > (room_height - 96))
        timeropac = 0.25
    else
        timeropac = 1
    if (obj_player.x > (room_width - 192) && obj_player.y > (room_height - 160))
        cashopac = 0.25
    else
        cashopac = 1
}
if (global.heat != 1)
{
    if (hm_img < (sprite_get_number(hm_spr) - 1))
    {
        switch global.heat
        {
            case 2:
                hm_img += 0.2
                break
            case 3:
                hm_img += 0.75
                break
        }

    }
    else
        hm_img = 0
}
if (rmg_active == 1)
{
    if (rmg_img < (sprite_get_number(rmg_spr) - 1))
        rmg_img += 0.3
    else
    {
        switch rmg_spr
        {
            case spr_radiomessage_start:
                rmg_spr = spr_radiomessage
                rmg_img = (sprite_get_number(rmg_spr) - 1)
                break
            case spr_radiomessage_end:
                rmg_bubble = 0
                tvnoise = 0
                rmg_active = 0
                rmg2_img = 0
                rmg_img = 0
                break
            default:
                rmg_img = 0
                break
        }

    }
}
if (rmg2_img < (sprite_get_number(rmg2_spr) - 1) && rmg_active == 1)
    rmg2_img += 0.3
else
{
    switch rmg2_spr
    {
        case spr_tv_player2_talk_start:
            rmg2_spr = spr_tv_player2_talk
            rmg2_img = (sprite_get_number(rmg_spr) - 1)
            break
        case spr_tv_player2_talk_end:
            rmg2_img = 0
            rmg_active = 0
            break
        default:
            rmg2_img = 0
            break
    }

}
if (comborank_scale > 2.4)
    comborank_scale -= 0.2
combometer_y = clamp(combometer_y, -450, 50)
global.heat_meter = clamp(global.heat_meter, 0, 90)
global.stylin_score = clamp(global.stylin_score, 0, 10)
