if (timer > 0)
    timer--
else
    image_alpha -= 0.02
if (image_alpha <= 0)
    instance_destroy()
if (obj_menu.section == "menu")
    visible = false
else
    visible = true
