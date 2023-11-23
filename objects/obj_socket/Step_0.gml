if (place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player) || (place_meeting(x, (y + 1), obj_player) && obj_player.vsp < 0) || place_meeting(x, (y - 1), obj_player))
    scr_hurt()
