if (startdone == 0 && sprite_index == spr_rank_intern_start)
{
    sprite_index = spr_rank_intern_wait
    startdone = 1
}
if (rankingdone == 0 && (sprite_index == spr_rank_intern_drank || sprite_index == spr_rank_intern_crank || sprite_index == spr_rank_intern_brank || sprite_index == spr_rank_intern_arank || sprite_index == spr_rank_intern_srank))
    rankingdone = 1
if (sprite_index == spr_rank_intern_prank)
{
    after_prank = 120
    prankdone = 1
    startdone = 1
    image_speed = 0
    image_index = 42
}
