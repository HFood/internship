if instance_exists(grabber_id)
{
    if (grabber_id.state == "grab")
    {
        x = grabber_id.x
        y = (grabber_id.bbox_top - 48)
    }
}
