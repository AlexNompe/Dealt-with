if is_dialog
{
	if timer > 0
	{
		timer -= 1 * delta_time / 1000000
	}
	else timer = 0
	
	offset = [0,abs(timer - 0.125)*24]
}