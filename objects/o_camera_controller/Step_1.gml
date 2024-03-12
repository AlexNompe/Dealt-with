if instance_exists(o_player)
{
	if room == 0 or room == 1 or room == 2
	{
		if o_player.x >= 0 and o_player.x < 672
		{
			camera_set_view_pos(view_camera[0],0,camera_get_view_y(view_camera[0]))
		}
		else if o_player.x >= 672 and o_player.x < 672 * 2
		{
			camera_set_view_pos(view_camera[0],672,camera_get_view_y(view_camera[0]))
		}
		else if o_player.x >= 672 * 2 and o_player.x < 672 * 3
		{
			camera_set_view_pos(view_camera[0],672*2,camera_get_view_y(view_camera[0]))
		}
		else if o_player.x >= 672 * 3 and o_player.x < 672 * 4
		{
			camera_set_view_pos(view_camera[0],672*3,camera_get_view_y(view_camera[0]))
		}
		
		if o_player.y >= 0 and o_player.y < 384
		{
			camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),0)
		}
		else if o_player.y >= 384 and o_player.y < 384 * 2
		{
			camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),384)
		}
		else if o_player.y >= 384 * 2 and o_player.y < 384 * 3
		{
			camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),384*2)
		}
		else if o_player.y >= 384 * 3 and o_player.y < 384 * 4
		{
			camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),384*3)
		}
		else if o_player.y >= 384 * 4 and o_player.y < 384 * 5
		{
			camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),384*4)
		}
		else if o_player.y >= 384 * 5 and o_player.y < 384 * 6
		{
			camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),384*5)
		}
		else if o_player.y >= 384 * 6 and o_player.y < 384 * 7
		{
			camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),384*6)
		}
	}
}