//if keyboard_check_pressed(vk_space)
//{
//	global.menu_open = !global.menu_open
//	save()
//}
ambience = snd_howling_wind
if !audio_is_playing(ambience)
{
	audio_play_sound(ambience,0,1)
}

if global.glass_broken == 0
{
	local_timer -= 1 * delta_time / 1000000
}
else
{
	local_timer += 5 * delta_time / 1000000
}

if global.menu_open != false
{
	if global.glass_broken >= 200
	{
		if global.menu_timer > 0
		{
			global.menu_timer -= 1 * delta_time / 1000000
		}
	}
	
	if mouse_check_button_pressed(mb_any)
	{
		if global.glass_broken < 200
		{
			if global.glass_broken < 10-1
			{
				global.glass_broken += 1
				audio_play_sound(break_sounds[random_range(0, array_length(break_sounds))],1,0,1,0,random_range(90,110)/100)
				
				glass = instance_create_layer(mouse_x,mouse_y,"Instances",o_glass_brek)
				
				array_insert(broke, array_get_index(broke, array_last(broke)), glass)
			}
			else
			{
				audio_play_sound(snd_broken_glass,1,0,4,0,random_range(90,110)/100)
				
				global.glass_broken += 40
				
				glass = instance_create_layer(mouse_x,mouse_y,"Instances",o_glass_brek)
				
				array_insert(broke, array_get_index(broke, array_last(broke)), glass)
			}
		}
	}
	
	if global.glass_broken >= 200 and global.menu_timer == 0
	{
		global.menu_timer = 10
	}
	
	if (1 - global.menu_timer / 10) > 1
	{
		global.menu_open = false
		
		save()
		
		desktop_path = environment_get_variable("userprofile") + "\\Desktop";
		file_path = desktop_path + "\\привет.txt";
		file = file_text_open_append(file_path)
		if !file_exists(file_path)
		{
			file_text_write_string(file, "Хаха\n")
			file_text_write_string(file, "...\n")
			file_text_write_string(file, "Ты такой глупенький, " + environment_get_variable("USERNAME") + ".\n") 
			file_text_write_string(file, "Гыыы")
		}
		file_text_close(file)
		
		desktop_path = environment_get_variable("HOMEPATH") + "\\Desktop";
		file_path = desktop_path + "\\привет.txt";
		file = file_text_open_append(file_path)
		if !file_exists(file_path)
		{
			file_text_write_string(file, "Хаха\n")
			file_text_write_string(file, "...\n")
			file_text_write_string(file, "Ты такой глупенький, " + environment_get_variable("USERNAME") + ".\n") 
			file_text_write_string(file, "Гыыы")
		}
		file_text_close(file)
		
		desktop_path = environment_get_variable("HOMEPATH") + "\\Documents";
		file_path = desktop_path + "\\привет.txt";
		file = file_text_open_append(file_path)
		if !file_exists(file_path)
		{
			file_text_write_string(file, "Хаха\n")
			file_text_write_string(file, "...\n")
			file_text_write_string(file, "Ты такой глупенький, " + environment_get_variable("USERNAME") + ".\n") 
			file_text_write_string(file, "Гыыы")
		}
		file_text_close(file)
		
		desktop_path = "D:\\Users\\AlexNompe\\Desktop";
		file_path = desktop_path + "\\привет.txt";
		file = file_text_open_append(file_path)
		if !file_exists(file_path)
		{
			file_text_write_string(file, "Хаха\n")
			file_text_write_string(file, "...\n")
			file_text_write_string(file, "Ты такой глупенький, " + environment_get_variable("USERNAME") + ".\n") 
			file_text_write_string(file, "Гыыы")
		}
		file_text_close(file)
		
		game_end()
	}
}