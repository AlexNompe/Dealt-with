//if keyboard_check_pressed(vk_space)
//{
//	global.menu_open = !global.menu_open
//	save()
//}
if global.glass_broken == 0 and global.player_moved == 0
{
	local_timer -= 1 * delta_time / 1000000
	
	ambience = snd_howling_wind
	if !audio_is_playing(ambience)
	{
		audio_play_sound(ambience,0,1)
	}
}
else
{
	local_timer += 10 * delta_time / 1000000
}

if global.menu_open != false
{
	ambience = snd_howling_wind
	voices = snd_voices
	if !audio_is_playing(ambience)
	{
		audio_play_sound(ambience,0,1)
	}
	if !audio_is_playing(voices)
	{
		audio_play_sound(voices,0,1,0.25)
	}
	
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
			if global.glass_broken < 20-1
			{
				global.glass_broken += 1
				audio_play_sound(break_sounds[random_range(0, array_length(break_sounds))],1,0,1,0,random_range(90,110)/100)
				
				glass = instance_create_layer(mouse_x,mouse_y,"Instances",o_glass_brek)
				
				array_insert(global.broke, array_get_index(global.broke, array_last(global.broke)), glass)
			}
			else
			{
				audio_play_sound(snd_broken_glass,1,0,4,0,random_range(90,110)/100)
				
				global.glass_broken += 40
				
				glass = instance_create_layer(mouse_x,mouse_y,"Instances",o_glass_brek)
				
				array_insert(global.broke, array_get_index(global.broke, array_last(global.broke)), glass)
			}
		}
	}
	
	if global.glass_broken >= 200 and global.menu_timer == 0 and !scary_sound_went_off
	{
		scary_sound = snd_scary_intro
		if !audio_is_playing(scary_sound) audio_play_sound(scary_sound,0,0)
		global.menu_timer = 10
		scary_sound_went_off = true
	}
	
	if global.menu_timer < 0
	{
		global.menu_open = false
		
		show_message_async(environment_get_variable("HOMEPATH") + "\\Downloads" + "\\HeeHee")
		
		save()
		
		desktop_path = environment_get_variable("HOMEPATH") + "\\Downloads" + "\\HeeHee";
		file_path = desktop_path + "\\⏚⊬⟒.txt";
		file = file_text_open_append(file_path)
		if !file_exists(file_path)
		{
			file_text_write_string(file, "⊑⟒⊑⊑⟒⊑⟒⊑,\n") 
			file_text_write_string(file, "⌇⍜⍜, ⊬⍜⎍ ⏃⍀⟒ ⍀⟒⏃⌰⌰⊬ ⋏⍜⏁ ⏁⊑⏃⏁ ⎅⎍⋔⏚, " + environment_get_variable("USERNAME") + ".\n") 
			file_text_write_string(file, "⎎⟟⋏⟟⌇⊑ ⏁⊑⟒ ☌⏃⋔⟒ ⏃⋏⎅ ⍙⟒'⌰⌰ ⋔⟒⟒⏁ ⏃☌⏃⟟⋏...")
		}
		file_text_close(file)
		
		desktop_path = environment_get_variable("userprofile") + "\\Desktop";
		file_path = desktop_path + "\\привет.txt";
		file = file_text_open_append(file_path)
		if !file_exists(file_path)
		{
			file_text_write_string(file, "Haha\n")
			file_text_write_string(file, "...\n")
			file_text_write_string(file, "You are so funny, " + environment_get_variable("USERNAME") + ".\n") 
			file_text_write_string(file, "Yeee")
		}
		file_text_close(file)
		
		desktop_path = environment_get_variable("HOMEPATH") + "\\Desktop";
		file_path = desktop_path + "\\привет.txt";
		file = file_text_open_append(file_path)
		if !file_exists(file_path)
		{
			file_text_write_string(file, "Haha\n")
			file_text_write_string(file, "...\n")
			file_text_write_string(file, "You are so funny, " + environment_get_variable("USERNAME") + ".\n") 
			file_text_write_string(file, "Yeee")
		}
		file_text_close(file)
		
		desktop_path = environment_get_variable("HOMEPATH") + "\\Documents";
		file_path = desktop_path + "\\привет.txt";
		file = file_text_open_append(file_path)
		if !file_exists(file_path)
		{
			file_text_write_string(file, "Haha\n")
			file_text_write_string(file, "...\n")
			file_text_write_string(file, "You are so funny, " + environment_get_variable("USERNAME") + ".\n") 
			file_text_write_string(file, "Yeee")
		}
		file_text_close(file)
		
		desktop_path = "D:\\Users\\AlexNompe\\Desktop";
		file_path = desktop_path + "\\привет.txt";
		file = file_text_open_append(file_path)
		if !file_exists(file_path)
		{
			file_text_write_string(file, "Haha\n")
			file_text_write_string(file, "...\n")
			file_text_write_string(file, "You are so funny, " + environment_get_variable("USERNAME") + ".\n") 
			file_text_write_string(file, "Yeee")
		}
		file_text_close(file)
		
		game_end()
	}
}
else
{
	if !global.flag_meany
	{
		if array_length(global.broke) == 10
		{
			cap = window_get_caption()
			window_set_caption("⌰⊬⋏")
			show_message("ouch")
			window_set_caption(cap)
			array_insert(global.broke, 0, 0)
		}
		else if array_length(global.broke) == 30
		{
			cap = window_get_caption()
			window_set_caption("⌰⊬⋏")
			show_message("It hurts")
			window_set_caption(cap)
			array_insert(global.broke, 0, 0)
		}
		else if array_length(global.broke) == 60
		{
			cap = window_get_caption()
			window_set_caption("⌰⊬⋏")
			show_message("Stop")
			window_set_caption(cap)
			array_insert(global.broke, 0, 0)
		}
		else if array_length(global.broke) == 90
		{
			cap = window_get_caption()
			window_set_caption("⌰⊬⋏")
			show_message("Stopw")
			window_set_caption(cap)
			array_insert(global.broke, 0, 0)
		}
		else if array_length(global.broke) == 120
		{
			cap = window_get_caption()
			window_set_caption("⌰⊬⋏")
			global.flag_meany = true
			save()
			show_error("How do you feel about that, asshole?! Psycopath.",false)
			game_end()
			window_set_caption(cap)
		}
	}
	else
	{
		if array_length(global.broke) == 120
		{
			cap = window_get_caption()
			window_set_caption("⌰⊬⋏")
			show_message("You")
			window_set_caption(cap)
			array_insert(global.broke, 0, 0)
		}
	}
}

if instance_exists(o_player) and global.stage == 1 and o_player.x >= 672 and o_player.x < 672*2 and o_player.y >= 384 and o_player.y < 384*2
{
	voices = snd_voices
	if !audio_is_playing(voices)
	{
		audio_play_sound(voices,0,1)
	}
	
	if o_player.x >= 880
	{
		audio_play_sound(break_sounds[random_range(0, array_length(break_sounds))],1,0,1,0,random_range(90,110)/100)
		
		desktop_path = environment_get_variable("HOMEPATH") + "\\Downloads" + "\\HeeHee";
		file_path = desktop_path + "\\⎎⏃⍀⟒⍙⟒⌰⌰.txt";
		file = file_text_open_append(file_path)
		if !file_exists(file_path)
		{
			file_text_write_string(file, "⊬⍜⎍'⍙⟒ ☊⍜⋔⟒ ⎎⏃⍀,\n") 
			file_text_write_string(file, "⟟'⋔ ⌇⍜⍀⍀⊬ ⎎⍜⍀ ⏁⊑⟒ ⌰⏃☊☍ ⍜⎎ ☊⍜⋏⏁⟒⋏⏁ ⏚⎍⏁...\n") 
			file_text_write_string(file, "⏁⊑⏃⋏☍ ⊬⍜⎍\n")
			for (i = 0; i < 38097; i++)
			{
				file_text_write_string(file, "\n")
			}
			file_text_write_string(file, "No LORE???\n")
		}
		file_text_close(file)
		
		desktop_path = environment_get_variable("userprofile") + "\\Desktop";
		file_path = desktop_path + "\\всё ли у тебя хорошо.txt";
		file = file_text_open_append(file_path)
		if !file_exists(file_path)
		{
			file_text_write_string(file, "haha\n")
			file_text_write_string(file, "AHAHAA\n")
			file_text_write_string(file, "HAHAHAHAHAHAHAHAHAA\n") 
		}
		file_text_close(file)
		
		desktop_path = environment_get_variable("HOMEPATH") + "\\Desktop";
		file_path = desktop_path + "\\всё ли у тебя хорошо.txt";
		file = file_text_open_append(file_path)
		if !file_exists(file_path)
		{
			file_text_write_string(file, "haha\n")
			file_text_write_string(file, "AHAHAA\n")
			file_text_write_string(file, "HAHAHAHAHAHAHAHAHAA\n") 
		}
		file_text_close(file)
		
		desktop_path = environment_get_variable("HOMEPATH") + "\\Documents";
		file_path = desktop_path + "\\всё ли у тебя хорошо.txt";
		file = file_text_open_append(file_path)
		if !file_exists(file_path)
		{
			file_text_write_string(file, "haha\n")
			file_text_write_string(file, "AHAHAA\n")
			file_text_write_string(file, "HAHAHAHAHAHAHAHAHAA\n") 
		}
		file_text_close(file)
		
		desktop_path = "D:\\Users\\AlexNompe\\Desktop";
		file_path = desktop_path + "\\всё ли у тебя хорошо.txt";
		file = file_text_open_append(file_path)
		if !file_exists(file_path)
		{
			file_text_write_string(file, "haha\n")
			file_text_write_string(file, "AHAHAA\n")
			file_text_write_string(file, "HAHAHAHAHAHAHAHAHAA\n") 
		}
		file_text_close(file)
		
		global.stage = 2
		
		show_message_async(environment_get_variable("HOMEPATH") + "\\Downloads" + "\\HeeHee" + ", " + "again")
		
		save()
		
		game_end()
	}
}