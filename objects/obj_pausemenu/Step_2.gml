select1 = min(select1, 4)
select1 = max(select1, 1)
select2 = min(select2, 4)
select2 = max(select2, 1)
vol_gen = min(vol_gen, 100)
vol_gen = max(vol_gen, 0)
vol_mu = min(vol_mu, 100)
vol_mu = max(vol_mu, 0)
vol_sfx = min(vol_sfx, 100)
vol_sfx = max(vol_sfx, 0)
audio_set_master_gain(0, (vol_gen / 100))
audio_group_set_gain(1, (vol_mu / 100), 0)
audio_group_set_gain(2, (vol_sfx / 100), 0)
window_set_fullscreen(fullscreen)
ini_open(global.savedata_ini)
ini_write_real("options", "vol_gen", vol_gen)
ini_write_real("options", "vol_sfx", vol_sfx)
ini_write_real("options", "vol_mu", vol_mu)
ini_write_real("options", "fullscreen", fullscreen)
ini_close()