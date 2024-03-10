if instance_exists(o_player)
{
	if room == 0 or room == 1 or room == 2
	{
		if o_player.x >= 672 and o_player.x < 672 * 2
		{
			camera_set_view_pos(view_camera[0],672,0)
		}
		else if o_player.x < 672
		{
			camera_set_view_pos(view_camera[0],0,0)
		}
		else if o_player.x >+ 672 * 2
		{
			camera_set_view_pos(view_camera[0],672*2,0)
		}
	}
}