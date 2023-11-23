if (global.escape == 1 && created == 0)
{
    scr_effectpoof()
    created = 1
}
if (created == 1)
    image_alpha = 1
else
    image_alpha = 0.2
