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
	
	if local_timer <= 0
	{
		draw_set_font(f_hello)
		draw_set_halign(fa_middle)
		draw_set_alpha(abs(local_timer/15))
		draw_set_color(c_gray)
		
		if !global.flag_meany draw_text_ext_transformed(336+sin(current_time/400)*4,352+cos(current_time/400)*4,"Пожалуйста, нажми куда угодно", 24, 4000, 0.16, 0.16, 0)
		else draw_text_ext_transformed(336+sin(current_time/400)*4,352+cos(current_time/400)*4,"Сволочь", 24, 4000, 0.16, 0.16, 0)
		
		draw_set_color(c_white)
		draw_set_alpha(1)
		draw_set_halign(fa_left)
	}
}
else if global.stage == 0
{
	if room == 0 draw_line_width_color(336,192-48,336,192+48,64,c_white,c_white)
	if local_timer <= 0
	{
		draw_set_font(f_hello)
		draw_set_halign(fa_middle)
		draw_set_alpha(abs(local_timer/15))
		draw_set_color(c_gray)
		
		if !global.flag_meany draw_text_ext_transformed(336+sin(current_time/400)*4,352+cos(current_time/400)*4,"Подвигайся! WASD", 24, 4000, 0.16, 0.16, 0)
		else draw_text_ext_transformed(336+sin(current_time/400)*4,352+cos(current_time/400)*4,"Идиот, тебе направо", 24, 4000, 0.16, 0.16, 0)
		
		draw_set_color(c_white)
		draw_set_alpha(1)
		draw_set_halign(fa_left)
	}
}
else if global.stage == 1
{
	if local_timer <= 0
	{
		draw_set_font(f_hello)
		draw_set_halign(fa_middle)
		draw_set_alpha(abs(local_timer/15))
		draw_set_color(c_gray)
		
		if !global.flag_meany draw_text_ext_transformed(336+sin(current_time/400)*4,352+384+cos(current_time/400)*4,"Тебя вообще то видно :p, иди вниз", 24, 4000, 0.16, 0.16, 0)
		else draw_text_ext_transformed(336+sin(current_time/400)*4,352+384+cos(current_time/400)*4,"Ты так и будешь читать все эти грёбаные диалоги?", 24, 4000, 0.16, 0.16, 0)
		
		draw_set_color(c_white)
		draw_set_alpha(1)
		draw_set_halign(fa_left)
	}
}
else if global.stage == 2
{
	draw_set_font(f_hello)
	draw_set_halign(fa_center)
	draw_set_color(c_black)
	
	if !global.flag_meany draw_text_ext_transformed(336,96,"Dealt with", 24, 4000, 1, 1, 0)
	else draw_text_ext_transformed(336,96,"Наглость", 24, 4000, 1, 1, 0)
	if !global.flag_meany draw_text_ext_transformed(336,192,"by AlexNompe and Resota0_0", 24, 4000, 0.16, 0.16, 0)
	
	draw_set_halign(fa_middle)
	if local_timer <= 0
	{
		var choice = false
		draw_set_alpha(abs(local_timer/10))
		draw_set_color(c_gray)
		
		if !global.flag_meany draw_text_ext_transformed(336+sin(current_time/400)*4,352+cos(current_time/400)*4,"Извини", 24, 4000, 0.16, 0.16, 0)
		
		if !global.flag_meany draw_text_ext_transformed(596+sin(current_time/400+10)*4,320+cos(current_time/400)*4,"(1-я концовка из 2-х)", 24, 4000, 0.16, 0.16, 45)
		else draw_text_ext_transformed(596+sin(current_time/400+10)*4,320+cos(current_time/400)*4,"(2-я концовка из 2-х)", 24, 4000, 0.16, 0.16, 45)
		
		if global.flag_meany and local_timer <= -10 and local_timer > -15 and !shown 
		{
			choice = show_question("Ты ещё здесь?")
			shown = true
			if choice == 1
			{
				choice = show_question("Сволочь?")
				shown = true
				
				if choice == 1 
				{
					global.flag_secret_holder = true
					
					save()
					
					show_error("Пошёл нахрен, под каким углом ко мне ты относился, под таким и я отнесусь.",false)
					
					game_end()
				}
			}
		}
		
		draw_set_color(c_white)
		draw_set_alpha(1)
	}
	draw_set_halign(fa_left)
}


//draw_text_color(336,250,1 - global.menu_timer / 10,c_white,c_white,c_white,c_white,1)