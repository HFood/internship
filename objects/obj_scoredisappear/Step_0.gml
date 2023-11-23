if (x > 32 && y > 16)
{
    direction = point_direction(x, y, 32, 16)
    speed -= 0.08
}
else
    instance_destroy()
