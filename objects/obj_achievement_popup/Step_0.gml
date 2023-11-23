switch state
{
    case 1:
        if (drawy > -290)
            drawy -= 6
        else
            state++
        break
    case 2:
        if (wait_timer > 0)
            wait_timer--
        else
            state++
        break
    case 3:
        if (drawy < 64)
            drawy += 6
        else
            instance_destroy()
        break
}

