spr = "idle"
char = "backy"
dial = array_create(11)
dial_emo = array_create(11)
dial_num = 0
tries_tohat = 8
average_chat = 0
ini_open(global.savedata_ini)
backyintro_done = ini_read_real("story", "backyintro_done2", 0)
backyend_done = ini_read_real("story", "backyend_done2", 0)
ini_close()
if (backyintro_done == 1)
{
    if (backyend_done == 0 && global.galleryopen == 1)
    {
        array_resize(dial, 9)
        array_resize(dial_emo, 9)
        array_set(dial, 0, "YOU DID IT INTERN!")
        array_set(dial, 1, "I SEE YOU'VE COMPLETED ALL LEVELS")
        array_set(dial, 2, "THIS DEMO IS OVER BUT DONT FRET!")
        array_set(dial, 3, "YOU CAN STILL AIM FOR THE P RANK!")
        array_set(dial, 4, "YOU NEED AN S RANK, ALL SECRETS,")
        array_set(dial, 5, "A TREASURE, LAP 2 AND S RANK!")
        array_set(dial, 6, "THAT'S A LOT ACTUALLY!")
        array_set(dial, 7, "ANYWAYS, STAY TUNED FOR THE.. UM")
        array_set(dial, 8, ".... YES, STAY TUNEDNFOR THE FULL GAME!")
        array_set(dial_emo, 0, "happy")
        array_set(dial_emo, 1, "normal")
        array_set(dial_emo, 2, "normal")
        array_set(dial_emo, 3, "happy")
        array_set(dial_emo, 4, "normal")
        array_set(dial_emo, 5, "normal")
        array_set(dial_emo, 6, "normal")
        array_set(dial_emo, 7, "normal")
        array_set(dial_emo, 8, "happy")
    }
    else
    {
        array_resize(dial, 1)
        array_resize(dial_emo, 1)
        average_chat = 1
        array_set(dial, 0, "HI! DID YOU WANT SOMETHING?")
        array_set(dial_emo, 0, "normal")
    }
}
else
{
    array_set(dial, 0, "WELCOME AGAIN!!!")
    array_set(dial, 1, "WE ARE GLAD TO SEE YOU\nBACK AGAIN!")
    array_set(dial, 2, "I HOPE YOU DIDN'T FORGET\nTHE BASICS")
    array_set(dial, 3, "BUT IF YOU DID,\nYOU CAN DO TUTORIAL")
    array_set(dial, 4, "AGAIN")
    array_set(dial, 5, "SO YEAH")
    array_set(dial, 6, "THIS BUILDING'S GOT\nA SECOND FLOOR")
    array_set(dial, 7, "IN ORDER TO ACCESS IT YOU HAVE TO")
    array_set(dial, 8, "COMPLETE ALL THE LEVELS ON FLOOR 1")
    array_set(dial, 9, "I HOPE YOU WILL HAVE FUN!")
    array_set(dial, 10, "HAVE A NICE DAY!!!")
    array_set(dial_emo, 0, "happy")
    array_set(dial_emo, 1, "happy")
    array_set(dial_emo, 2, "normal")
    array_set(dial_emo, 3, "normal")
    array_set(dial_emo, 4, "normal")
    array_set(dial_emo, 5, "normal")
    array_set(dial_emo, 6, "normal")
    array_set(dial_emo, 7, "normal")
    array_set(dial_emo, 8, "normal")
    array_set(dial_emo, 9, "normal")
    array_set(dial_emo, 10, "happy")
}
cutscene = 0
cursid = -4
