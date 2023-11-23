if (state == "olivebreak")
{
    if (obj_player.tauntduration > 0)
    {
        with (other)
        {
            scr_player_perform_parry(1, sign((other.x - x)), 4, 0)
            image_xscale = sign((other.x - x))
        }
        hp--
    }
    else if (other.state != "hurt" && other.invincibility == 0 && other.state != "ghost" && other.state != "bodyslam")
    {
        with (other)
            scr_player_perform_hurt(1, other.id)
    }
}
