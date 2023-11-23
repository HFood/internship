camera_set_view_size(view_camera[0], 960, 540)
shk_x = 0
shk_y = 0
shk_strength = 1
mach_x = 0
withmach = 1
camyplus = 0
border = 100
scr_random()
if (ds_list_find_index(global.saveroom, id) != -1)
    instance_destroy()
