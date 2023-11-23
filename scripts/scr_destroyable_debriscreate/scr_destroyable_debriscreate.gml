function scr_destroyable_debriscreate() //gml_Script_scr_destroyable_debriscreate
{
    if (secretblock == 1)
    {
        repeat irandom_range(4, 6)
        {
            with (instance_create_depth(x, y, -1004, obj_debris))
            {
                spinning = 1
                spinstrength = irandom_range(10, 40)
                spindir = choose(1, -1)
                image_blend = other.image_blend
                image_angle = irandom_range(1, 360)
                hsp = irandom_range(6, -6)
                vsp = irandom_range(2, -8)
                sprite_index = spr_secretblock_debris
                image_index = irandom_range(0, 4)
            }
        }
    }
    else
    {
        switch object_index
        {
            case obj_breadbox:
                repeat irandom_range(2, 4)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        switch global.level
                        {
                            case "crateburg":
                                sprite_index = spr_destroyable_crateburg_debris
                                break
                            case "train":
                                sprite_index = spr_destroyable_train_debris
                                break
                            default:
                                sprite_index = spr_destroyable_debris
                                break
                        }

                    }
                }
                break
            case obj_breadbox_hidden:
                repeat irandom_range(2, 4)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        switch global.level
                        {
                            case "crateburg":
                                sprite_index = spr_destroyable_crateburg_debris
                                break
                            case "train":
                                sprite_index = spr_destroyable_train_debris
                                break
                            default:
                                sprite_index = spr_destroyable_debris
                                break
                        }

                    }
                }
                break
            case obj_breadbox_big:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        switch global.level
                        {
                            case "crateburg":
                                sprite_index = spr_destroyable_big_crateburg_debris
                                break
                            case "train":
                                sprite_index = spr_destroyable_big_train_debris
                                break
                            default:
                                sprite_index = spr_destroyable4_debris
                                break
                        }

                    }
                }
                break
            case obj_breadbox_big_up:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_destroyable4_debris
                    }
                }
                break
            case obj_breadbox_big_left:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_destroyable4_debris
                    }
                }
                break
            case obj_breadbox_big_right:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_destroyable4_debris
                    }
                }
                break
            case obj_breadbox_big_down:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_destroyable4_debris
                    }
                }
                break
            case obj_breadbox_big_hidden:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_destroyable4_debris
                    }
                }
                break
            case obj_breadbox_big_hidden_up:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_destroyable4_debris
                    }
                }
                break
            case obj_breadbox_big_hidden_left:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_destroyable4_debris
                    }
                }
                break
            case obj_breadbox_big_hidden_right:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_destroyable4_debris
                    }
                }
                break
            case obj_breadbox_big_hidden_down:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_destroyable4_debris
                    }
                }
                break
            case obj_breadbox_giant_hidden:
                repeat irandom_range(4, 9)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        switch global.level
                        {
                            case "crateburg":
                                sprite_index = spr_destroyable_big_crateburg_debris
                                break
                            case "train":
                                sprite_index = spr_destroyable_big_train_debris
                                break
                            default:
                                sprite_index = spr_destroyable4_debris
                                break
                        }

                    }
                }
                break
            case obj_metalbox:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_metalblock_debris
                    }
                }
                break
            case obj_metalbox_hidden:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_metalblock_debris
                    }
                }
                break
            case obj_metalbox_big:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_metalblock_debris
                    }
                }
                break
            case obj_metalbox_big_hidden:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_metalblock_debris
                    }
                }
                break
            case obj_metalbox_giant_hidden:
                repeat irandom_range(4, 9)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_metalblock_debris
                    }
                }
                break
            case obj_bombbox:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_bombrock_debris
                    }
                }
                break
            case obj_bombbox_hidden:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_bombrock_debris
                    }
                }
                break
            case obj_hardbox:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_hardblock_debris
                    }
                }
                break
            case obj_hardbox_hidden:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_hardblock_debris
                    }
                }
                break
            case obj_hardbox_giant_hidden:
                repeat irandom_range(4, 9)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_hardblock_debris
                    }
                }
                break
            case obj_hardbox_big:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_hardblock_debris
                    }
                }
                break
            case obj_hardbox_big_hidden:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_metalblock_debris
                    }
                }
                break
            case obj_cheeseblock:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_cheeseblock_debris
                    }
                }
                break
            case obj_cheeseblock_hidden:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_cheeseblock_debris
                    }
                }
                break
            case obj_cheeseblock_big_hidden:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_cheeseblock_debris
                    }
                }
                break
            case obj_explosiveblock:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_explosiveblock_debris
                    }
                }
                break
            case obj_targetblock:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_targetblock_debris
                    }
                }
                break
            case obj_sandwichbox:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_destroyable2_debris
                    }
                }
                break
            case obj_sandwichbox_hidden:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_destroyable2_debris
                    }
                }
                break
            case obj_sandwichbox_big:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_destroyable3_debris
                    }
                }
                break
            case obj_sandwichbox_big_hidden:
                repeat irandom_range(3, 6)
                {
                    with (instance_create_depth(x, y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_destroyable3_debris
                    }
                }
                break
            case obj_ancientplatform:
                repeat irandom_range(5, 9)
                {
                    with (instance_create_depth((x + irandom_range(224, -224)), y, -1004, obj_debris))
                    {
                        spinning = 1
                        spinstrength = irandom_range(10, 40)
                        spindir = choose(1, -1)
                        image_blend = other.image_blend
                        image_angle = irandom_range(1, 360)
                        image_index = irandom_range(0, 3)
                        hsp = irandom_range(6, -6)
                        vsp = irandom_range(2, -8)
                        sprite_index = spr_ancientplatform_debris
                    }
                }
                break
            case obj_loafblock:
                with (instance_create_depth(x, y, -1004, obj_debris))
                {
                    particles = 1
                    spinstrength = irandom_range(10, 40)
                    spindir = choose(1, -1)
                    image_blend = other.image_blend
                    hsp = choose(12, -12)
                    vsp = irandom_range(2, -10)
                    sprite_index = spr_loaf_dead
                }
                break
        }

    }
}

