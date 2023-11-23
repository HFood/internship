draw_set_font(global.rankpaperfont)
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
ini_open(global.savedata_ini)
if (sprite_index == spr_rank_intern_prank)
{
    if (prankdone == 0)
        draw_rectangle(0, 0, 1920, 1080, false)
    draw_self()
}
draw_sprite_ext(spr_rank_paper, 0, (480 + paper_X), 270, 1, 1, 0, c_white, 1)
if (startdone == 1 && pre_wind == 0)
{
    if (phase > 5)
    {
        draw_set_font(global.scorefont_new)
        draw_text_transformed((645 + paper_X), 450, fakescore, 1, 1, 0)
        draw_set_font(global.rankpaperfont)
    }
    if (phase > 4)
    {
        if (cur_treas == 1)
            draw_sprite_ext(spr_boxboy_idle, 5, (800 + paper_X), 300, 1, 1, 0, c_white, 1)
        else
            draw_sprite_ext(spr_boxboy_idle, 5, (800 + paper_X), 300, 1, 1, 0, c_black, 1)
    }
    if (phase > 3)
        draw_text_transformed((800 + paper_X), 270, cur_kills, 1, 1, 0)
    if (phase > 2)
        draw_text_transformed((800 + paper_X), 210, cur_dmg, 1, 1, 0)
    if (phase > 0)
    {
        if (faketimer_sec > 9)
            draw_text_transformed((800 + paper_X), 95, ((string(faketimer_min) + ":") + string(faketimer_sec)), 1, 1, 0)
        else
            draw_text_transformed((800 + paper_X), 95, ((string(faketimer_min) + ":0") + string(faketimer_sec)), 1, 1, 0)
    }
    if (phase > 1)
        draw_text_transformed((800 + paper_X), 150, (string(cur_secret) + "/3"), 1, 1, 0)
    if (phase > 6)
    {
        if (global.score >= global.srank)
        {
            if (cur_secret >= 3 && global.laps > 0 && global.treasure == 1 && global.prankable == 1)
                draw_sprite_ext(spr_rank_paper_ranks, 5, (480 + paper_X), 270, 1, 1, 0, c_white, 1)
            else
                draw_sprite_ext(spr_rank_paper_ranks, 4, (480 + paper_X), 270, 1, 1, 0, c_white, 1)
        }
        else if (global.score >= global.arank)
            draw_sprite_ext(spr_rank_paper_ranks, 3, (480 + paper_X), 270, 1, 1, 0, c_white, 1)
        else if (global.score >= global.brank)
            draw_sprite_ext(spr_rank_paper_ranks, 2, (480 + paper_X), 270, 1, 1, 0, c_white, 1)
        else if (global.score >= global.crank)
            draw_sprite_ext(spr_rank_paper_ranks, 1, (480 + paper_X), 270, 1, 1, 0, c_white, 1)
        else
            draw_sprite_ext(spr_rank_paper_ranks, 0, (480 + paper_X), 270, 1, 1, 0, c_white, 1)
    }
}
if (sprite_index != spr_rank_intern_prank)
    draw_self()
ini_close()
