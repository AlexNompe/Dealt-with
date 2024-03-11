if !collided
{
	with o_menu
	{
		save_var_place = other.var_place
		save_var_position = other.var_position
	}
	
	o_menu.alarm[0] = 1
	
	collided = true
}