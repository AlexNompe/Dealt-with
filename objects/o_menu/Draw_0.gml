if global.menu_open 
{
	for (i = 0; i < array_length(button_positions); i++)
	{
		//draw_button(button_positions[i][0] - default_button_size[0], button_positions[i][1] - default_button_size[1], button_positions[i][0] + default_button_size[0], button_positions[i][1] + default_button_size[1], !(mouse_check_button(mb_left) and mouse_x > button_positions[i][0] - default_button_size[0] and mouse_y > button_positions[i][1] - default_button_size[1] and mouse_x < button_positions[i][0] + default_button_size[0] and mouse_y < button_positions[i][1] + default_button_size[1]))
	}
	
	if global.glass_broken >= 200
	{
		draw_set_alpha(1 - global.menu_timer / 10)
		draw_line_width_color(-room_width,192,2*room_width,192,1000,c_white,c_white)
		draw_set_alpha(1)
	}
}

//draw_text_color(336,250,1 - global.menu_timer / 10,c_white,c_white,c_white,c_white,1)