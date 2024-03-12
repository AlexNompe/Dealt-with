if is_dialog
{
	draw_set_font(f_hello)
	
	var dialog_position = [672/2, 384*3/4]
	if room == 0 var color = c_white
	else if room == 1 var color = make_color_rgb(180,32,42)
	else if room == 2 var color = make_color_rgb(6,6,8)
	else var color = c_white
	
	draw_line_width_color(dialog_position[0]-160,dialog_position[1]+40,dialog_position[0]+160,dialog_position[1]+40,80,color,color)
	
	for (i = -4; i < 20; i++)
	{
		draw_rectangle(dialog_position[0]-160-i/4,dialog_position[1]-i/4,dialog_position[0]+160+i/4,dialog_position[1]+80+i/4,c_white)
	}
	
	draw_text_ext_transformed(dialog_position[0]-152+offset[0],dialog_position[1]+offset[1],local_dialog_text,80,2000,0.16,0.16,0)
}
	