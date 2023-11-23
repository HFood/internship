if place_meeting(x, y, obj_player)
{
    if (alpha > 0)
        alpha -= 0.05
    else
        alpha = 0
}
else if (alpha < 1)
    alpha += 0.05
else
    alpha = 1
