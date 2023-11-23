if (global.fun_meter >= global.fun_meter_good)
{
    global.combotimer += global.combotimer_full
    with (instance_create_depth(0, 0, 0, obj_pointgiver))
        points = 1000
    with (obj_parallax)
        circus_audience_joy = 320
    with (instance_create_depth(obj_player.x, obj_player.y, 0, obj_tvtrigger))
    {
        switch room
        {
            case rm_circus5:
                txt = "WOOHOO!!! Phil, you got it! That was brilliant. Next up we have some hot business.. if you know what i mean!"
                emo = "t_happy"
                break
            case rm_circus6:
                txt = "You sure know how to deal with fire, huh! Well, that was magnificent as always!"
                emo = "t_normal"
                break
            case rm_circus7:
                txt = "Easy peasy!!! It seems like these obstacles mean nothing for you! So let's spice things up.... i think we need some electricity! Hee hee!"
                emo = "t_happy"
                break
            case rm_circus8:
                txt = "Outstanding!!!!! But don't relax, Phil. There's some walljumping you need to do!"
                emo = "t_happy"
                break
            case rm_circus9:
                txt = "WOW! He was born to take challenges like these! Also, we are having a show on next friday, so get ready, buckaroos!"
                emo = "t_normal"
                break
            case rm_circus10:
                txt = "Yup! You're da BEST! Now Phil goes for the final run, and we'll be ending here. Good luck, Phil!"
                emo = "t_happy"
                break
        }

    }
    scr_1sound(sfx_giantcollect)
}
else if (global.fun_meter >= (global.fun_meter_good * 0.75))
{
    global.combotimer += global.combotimer_full
    with (instance_create_depth(0, 0, 0, obj_pointgiver))
        points = 750
    with (instance_create_depth(obj_player.x, obj_player.y, 0, obj_tvtrigger))
    {
        switch room
        {
            case rm_circus5:
                txt = "Nicely done, Phil! Next up we have some hot business.. if you know what i mean!"
                emo = "t_normal"
                break
            case rm_circus6:
                txt = "Not bad, not bad, Phil! Let's see what goes next!"
                emo = "t_normal"
                break
            case rm_circus7:
                txt = "You got it! I think these obstacles may seem a bit easy for you.... so we added some outlets. Can Phil do it? Let's find out."
                emo = "t_normal"
                break
            case rm_circus8:
                txt = "That outlet part wasn't hard, am i right? So what do we need? That's right! More outlets!! Ha-ha-ha! Keep goin'!"
                emo = "t_happy"
                break
            case rm_circus9:
                txt = "Nicely done! Also, we are having a show on next friday, so get ready, buckaroos!"
                emo = "t_normal"
                break
            case rm_circus10:
                txt = "Great, Great, Great! Now Phil goes for the final run, and we'll be ending here. Good luck, Phil!"
                emo = "t_normal"
                break
        }

    }
    scr_1sound(sfx_bigcollect)
}
else if (global.fun_meter >= (global.fun_meter_good * 0.5))
{
    global.combotimer += global.combotimer_full
    with (instance_create_depth(0, 0, 0, obj_pointgiver))
        points = 500
    with (instance_create_depth(obj_player.x, obj_player.y, 0, obj_tvtrigger))
    {
        switch room
        {
            case rm_circus5:
                txt = "Alright! Next up we have some hot business.. if you know what i mean!"
                emo = "t_normal"
                break
            case rm_circus6:
                txt = "That was average! Did you get the joke?? I think that's mildly funny."
                emo = "t_normal"
                break
            case rm_circus7:
                txt = "Nice! Now we're raising the stakes by adding...... some outlets!! Good luck, ha-ha-ha!"
                emo = "t_normal"
                break
            case rm_circus8:
                txt = "Ok.... You sure passed that outlet part! It's time to move on."
                emo = "t_normal"
                break
            case rm_circus9:
                txt = "Moving on! Also, we are having a show on next friday, so get ready, buckaroos!"
                emo = "t_normal"
                break
            case rm_circus10:
                txt = "Uh-huh! Now Phil goes for the final run, and we'll be ending here. Good luck, Phil!"
                emo = "t_normal"
                break
        }

    }
    scr_1sound(sfx_bigcollect)
}
else if (global.fun_meter >= (global.fun_meter_good * 0.25))
{
    global.combotimer += global.combotimer_full
    with (instance_create_depth(0, 0, 0, obj_pointgiver))
        points = 250
    with (instance_create_depth(obj_player.x, obj_player.y, 0, obj_tvtrigger))
    {
        switch room
        {
            case rm_circus5:
                txt = "You were pretty slow, Phil. Next up we have some hot business.. if you know what i mean!"
                emo = "t_bored"
                break
            case rm_circus6:
                txt = "You've got some third degree burns, haven't you? Catching on fire can be pretty craaazy!"
                emo = "t_happy"
                break
            case rm_circus7:
                txt = "What happened, Phil? That was slow. Anyways, next up we have some outlets..... to spice up the show. Enjoy!"
                emo = "t_normal"
                break
            case rm_circus8:
                txt = "I'd say you're a bit SHOCKED by the traps i made for you!... if you know what i mean! Ha-ha!"
                emo = "t_happy"
                break
            case rm_circus9:
                txt = "We're getting bored, Phil! And folks, we are having a show on next friday, so get ready!"
                emo = "t_normal"
                break
            case rm_circus10:
                txt = "....And now Phil goes for the final run, and we'll be ending here. Good luck, Phil!"
                emo = "t_happy"
                break
        }

    }
    scr_1sound(sfx_munch)
}
else
{
    with (instance_create_depth(x, y, -1, obj_textfloat))
        _score = 0
    with (instance_create_depth(obj_player.x, obj_player.y, 0, obj_tvtrigger))
    {
        switch room
        {
            case rm_circus5:
                txt = "Good lord that was horrible. Next up we have some hot business.. if you know what i mean!"
                emo = "t_bored"
                break
            case rm_circus6:
                txt = "YAAAAAAAAAAWNN! Move on, Phil!"
                emo = "t_bored"
                break
            case rm_circus7:
                txt = "That was................ pitiful! Is he even gonna pass the outlet part? Ha-ha-ha!! Well, let's see!"
                emo = "t_happy"
                break
            case rm_circus8:
                txt = "Booooooooooring! Phil, move faster!!!!"
                emo = "t_bored"
                break
            case rm_circus9:
                txt = "That really took ages! Is it that hard? And folks, we are having a show on next friday, so get ready!"
                emo = "t_normal"
                break
            case rm_circus10:
                txt = "Slow as a snail... Now Phil goes for the final run, and we'll be ending here."
                emo = "t_bored"
                break
        }

    }
    scr_1sound(sfx_tick)
}
global.fun_meter = _fun
global.fun_meter_full = global.fun_meter
global.fun_meter_good = _fun_good
instance_destroy()
