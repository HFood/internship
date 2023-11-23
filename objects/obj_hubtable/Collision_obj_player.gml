if (other.grounded && other.crouch == 0 && other.spinning == 0 && other.grabbing == 0)
{
    if (other.state == "normal" && other.key_up_once)
    {
        cutscene_choice = 0
        cutscene = 1
        with (obj_player)
        {
            if (x < other.x)
            {
                cutscene_xsc = 1
                cutscene_x = (other.x - 64)
            }
            else
            {
                cutscene_xsc = -1
                cutscene_x = (other.x + 64)
            }
            state = "cutscene"
        }
    }
    else if (other.state == "cutscene" && other.key_up_once)
    {
        if (dial_num < (array_length(dial) - 1))
            dial_num++
        else if (average_chat == 1)
        {
            if (other.cutscene_choice == 0)
            {
                with (other)
                {
                    cutscene_choice = 1
                    cutscene_choice_c = 1
                }
            }
        }
        else
        {
            if (tries_tohat == -1)
            {
                ini_open(global.savedata_ini)
                ini_write_real("story", "cylindergot", 1)
                ini_close()
                with (obj_playerhat)
                    hat = "cylinder"
                tries_tohat = -2
            }
            if (backyintro_done == 0)
            {
                backyintro_done = 1
                ini_open(global.savedata_ini)
                ini_write_real("story", "backyintro_done2", 1)
                ini_close()
            }
            if (backyend_done == 0 && global.galleryopen == 1)
            {
                backyend_done = 1
                ini_open(global.savedata_ini)
                ini_write_real("story", "backyend_done2", 1)
                ini_close()
            }
            average_chat = 1
            with (obj_scorekeeper)
                msg_time = 180
            cutscene = 0
            dial_num = 0
            with (obj_player)
                state = "normal"
            array_resize(dial, 1)
            array_resize(dial_emo, 1)
            array_set(dial, 0, "HI! DID YOU WANT SOMETHING?")
            array_set(dial_emo, 0, "normal")
        }
    }
}
if (other.key_jump && other.state == "cutscene" && average_chat == 1 && other.cutscene_choice == 1)
{
    switch other.cutscene_choice_c
    {
        case 1:
            array_set(dial, 0, "YOU WANT A TIP?\nLET'S SEE...HM... OH!")
            array_set(dial_emo, 0, "normal")
            tip = irandom_range(1, 10)
            switch tip
            {
                case 1:
                    array_resize(dial, 3)
                    array_resize(dial_emo, 3)
                    array_set(dial, 1, "IF YOU DO A DIVE\nAND THEN JUMP")
                    array_set(dial, 2, "YOU WILL DO A GROUND POUND!")
                    array_set(dial_emo, 1, "normal")
                    array_set(dial_emo, 2, "normal")
                    break
                case 2:
                    array_resize(dial, 4)
                    array_resize(dial_emo, 4)
                    array_set(dial, 1, "IF YOU GROUND POUND A SLOPE")
                    array_set(dial, 2, "YOU WILL START SLIDING")
                    array_set(dial, 3, "WHICH YOU CAN CANCEL\nAND START DASHING!")
                    array_set(dial_emo, 1, "normal")
                    array_set(dial_emo, 2, "normal")
                    array_set(dial_emo, 3, "happy")
                    break
                case 3:
                    array_resize(dial, 5)
                    array_resize(dial_emo, 5)
                    array_set(dial, 1, "IF YOU PRESS X AND\n HOLD DASH")
                    array_set(dial, 2, "YOU WILL REACH MACH 3\nFASTER")
                    array_set(dial, 3, "BUT YOU CAN DO IT\nEVEN QUICKER!")
                    array_set(dial, 4, "PRESS X, DOWN AND DASH!")
                    array_set(dial_emo, 1, "normal")
                    array_set(dial_emo, 2, "normal")
                    array_set(dial_emo, 3, "normal")
                    array_set(dial_emo, 4, "normal")
                    break
                case 4:
                    array_resize(dial, 4)
                    array_resize(dial_emo, 4)
                    array_set(dial, 1, "YOU CAN CANCEL YOUR DASH\nBY PRESSING X")
                    array_set(dial, 2, "IT CAN SAVE A LOT OF TIME!")
                    array_set(dial, 3, "YOU CAN EVEN CANCEL\nYOUR TUMBLE!")
                    array_set(dial_emo, 1, "normal")
                    array_set(dial_emo, 2, "happy")
                    array_set(dial_emo, 3, "happy")
                    break
                case 5:
                    array_resize(dial, 5)
                    array_resize(dial_emo, 5)
                    array_set(dial, 1, "EVER SEEN LOCKED\nTREASURE DOORS?")
                    array_set(dial, 2, "TO OPEN THEM YOU NEED\nTO GET LUNCHY")
                    array_set(dial, 3, "HE IS A LUNCHBOX.")
                    array_set(dial, 4, "ALSO YOU NEED TO HAVE\nAT LEAST 1 LAP")
                    array_set(dial_emo, 1, "normal")
                    array_set(dial_emo, 2, "normal")
                    array_set(dial_emo, 3, "normal")
                    array_set(dial_emo, 4, "normal")
                    break
                case 6:
                    array_resize(dial, 7)
                    array_resize(dial_emo, 7)
                    array_set(dial, 1, "IF THE TIMER RUNS OUT")
                    array_set(dial, 2, "YOU AREN'T DEAD YET!")
                    array_set(dial, 3, "BIG S SPAWNS ON YOUR POSITION")
                    array_set(dial, 4, "HE WILL CHASE YOU")
                    array_set(dial, 5, "AND IF HE GETS YOU.. WELL")
                    array_set(dial, 6, "YOU GOTTA START OVER!")
                    array_set(dial_emo, 1, "normal")
                    array_set(dial_emo, 2, "normal")
                    array_set(dial_emo, 3, "normal")
                    array_set(dial_emo, 4, "normal")
                    array_set(dial_emo, 5, "normal")
                    array_set(dial_emo, 6, "happy")
                    break
                case 7:
                    array_resize(dial, 7)
                    array_resize(dial_emo, 7)
                    array_set(dial, 1, "THAT ENIGMATIC HEAT METER...")
                    array_set(dial, 2, "WHAT DOES IT DO?")
                    array_set(dial, 3, "WELL, NOTHING MUCH")
                    array_set(dial, 4, "HEAT METER JUST\nSPEEDS UP ENEMIES")
                    array_set(dial, 5, "AND THAT'S IT..")
                    array_set(dial, 6, "YEAH, I KNOW.\nIT'S BORING")
                    array_set(dial_emo, 1, "normal")
                    array_set(dial_emo, 2, "normal")
                    array_set(dial_emo, 3, "normal")
                    array_set(dial_emo, 4, "normal")
                    array_set(dial_emo, 5, "normal")
                    array_set(dial_emo, 6, "normal")
                    break
                case 8:
                    array_resize(dial, 5)
                    array_resize(dial_emo, 5)
                    array_set(dial, 1, "LAP PORTALS ARE OFTEN\nEASILY FOUND")
                    array_set(dial, 2, "BUT SOME ONES ARE\nHIDDEN IN THE WALLS!")
                    array_set(dial, 3, "SO IF YOU'RE ON\nYOUR WAY TO P RANK")
                    array_set(dial, 4, "YOU GOTTA REMEMBER\nITS POSITION!")
                    array_set(dial_emo, 1, "normal")
                    array_set(dial_emo, 2, "normal")
                    array_set(dial_emo, 3, "normal")
                    array_set(dial_emo, 4, "normal")
                    break
                case 9:
                    array_resize(dial, 5)
                    array_resize(dial_emo, 5)
                    array_set(dial, 1, "THE IMMORTAL LOAF")
                    array_set(dial, 2, "IT IS COMING")
                    array_set(dial, 3, "TO EAT YOU!!")
                    array_set(dial, 4, "HA HA! I'M KIDDIN")
                    array_set(dial_emo, 1, "normal")
                    array_set(dial_emo, 2, "normal")
                    array_set(dial_emo, 3, "normal")
                    array_set(dial_emo, 4, "happy")
                    break
                case 10:
                    array_resize(dial, 7)
                    array_resize(dial_emo, 7)
                    array_set(dial, 1, "DO YOU KNOW WHAT HAPPENS\nIF YOU GET AN S RANK?")
                    array_set(dial, 2, "YOU WILL GET A HAT!")
                    array_set(dial, 3, "YES, A HAT!")
                    array_set(dial, 4, "EVERY LEVEL HAS ITS OWN")
                    array_set(dial, 5, "YOU CAN EQUIP HATS\nUSING WARDROBE!")
                    array_set(dial, 6, "(WARDROBE SPAWNS DOWN HERE)")
                    array_set(dial_emo, 1, "normal")
                    array_set(dial_emo, 2, "happy")
                    array_set(dial_emo, 3, "happy")
                    array_set(dial_emo, 4, "normal")
                    array_set(dial_emo, 5, "normal")
                    array_set(dial_emo, 6, "normal")
                    break
            }

            break
        case 2:
            array_resize(dial, 6)
            array_resize(dial_emo, 6)
            array_set(dial, 0, "YOUR STATISTICS? HM..")
            array_set(dial, 1, "LET'S SEE...")
            array_set(dial, 2, ("TOTAL SCORE: " + string(global.score_total)))
            array_set(dial, 3, (("TOTAL SECRETS: " + string(global.secrets_total)) + "/24"))
            array_set(dial, 4, (("LEVELS DONE: " + string(global.levels_done)) + "/8"))
            array_set(dial, 5, "UHHH YEAH THAT'S PRETTY MUCH IT")
            array_set(dial_emo, 0, "normal")
            array_set(dial_emo, 1, "normal")
            array_set(dial_emo, 2, "normal")
            array_set(dial_emo, 3, "normal")
            array_set(dial_emo, 4, "normal")
            array_set(dial_emo, 5, "normal")
            break
        case 3:
            ini_open(global.savedata_ini)
            if instance_exists(obj_warderobe)
            {
                array_resize(dial, 2)
                array_resize(dial_emo, 2)
                array_set(dial, 0, "YOU ALREADY HAVE IT!")
                array_set(dial, 1, "THERE'S A WARDROBE\nON THE RIGHT")
                array_set(dial_emo, 0, "normal")
                array_set(dial_emo, 1, "normal")
            }
            else if (tries_tohat == 0)
            {
                array_resize(dial, 2)
                array_resize(dial_emo, 2)
                array_set(dial, 0, "ALRIGHT ALRIGHT")
                array_set(dial, 1, "GET YOUR HAT INTERN")
                array_set(dial_emo, 0, "normal")
                array_set(dial_emo, 1, "normal")
                tries_tohat = -1
            }
            else if (tries_tohat == -2)
            {
                array_resize(dial, 1)
                array_resize(dial_emo, 1)
                array_set(dial, 0, "YOU ALREADY HAVE IT!")
                array_set(dial_emo, 0, "normal")
            }
            else
            {
                array_resize(dial, 1)
                array_resize(dial_emo, 1)
                array_set(dial, 0, "NO")
                array_set(dial_emo, 0, "normal")
                tries_tohat--
            }
            ini_close()
            break
    }

    other.cutscene_choice = 0
    average_chat = 0
}
