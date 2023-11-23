attach = 0
txt = "Hello, World!"
pillar = 0
pillar_id = -4
tvshow = 0
ini_open(global.savedata_ini)
tutorial_done = ini_read_real("story", "tutorial_done", 0)
ini_close()
if ((global.level == "tutorial" && tutorial_done == 1) || global.character == "backy")
    instance_destroy()
emo = "normal"
