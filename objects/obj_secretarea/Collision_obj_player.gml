scr_sound(sfx_secretfound)
global.secrets++
scr_message((("YOU HAVE FOUND " + string(global.secrets)) + " SECRETS OUT OF 3"))
instance_destroy()
