function scr_radiomessage(argument0, argument1) //gml_Script_scr_radiomessage
{
    obj_scorekeeper.rmg_txt = argument0
    with (obj_scorekeeper)
    {
        tvnoise = 0
        rmg_bubble = 1
        rmg_img = 0
        rmg_spr = spr_radiomessage_start
        rmg_x = 960
        rmg_active = 1
    }
    switch argument1
    {
        case "normal":
            obj_scorekeeper.rmg2_spr = spr_tv_player2_talk
            break
        case "question":
            obj_scorekeeper.rmg2_spr = spr_tv_player2_talk_b
            break
        case "shock":
            obj_scorekeeper.rmg2_spr = spr_tv_player2_talk_c
            break
        case "t_normal":
            obj_scorekeeper.rmg2_spr = spr_tv_tomatino_talk_normal
            break
        case "t_bored":
            obj_scorekeeper.rmg2_spr = spr_tv_tomatino_talk_bored
            break
        case "t_happy":
            obj_scorekeeper.rmg2_spr = spr_tv_tomatino_talk_happy
            break
        case "t_crazy":
            obj_scorekeeper.rmg2_spr = spr_tv_tomatino_talk_crazy
            break
    }

}

