interaction_function = function()
{
	desktop_path = environment_get_variable("userprofile") + "\\Desktop";
	file_path = desktop_path + "\\как дела.txt";
	file = file_text_open_append(file_path)
	if !file_exists(file_path)
	{
		file_text_write_string(file, "Тыы это знаешь...\n")
		file_text_write_string(file, "Готовься лучше\n") 
		file_text_write_string(file, "Скоро будет вкусно")
	}
	file_text_close(file)
	
	desktop_path = environment_get_variable("HOMEPATH") + "\\Desktop";
	file_path = desktop_path + "\\как дела.txt";
	file = file_text_open_append(file_path)
	if !file_exists(file_path)
	{
		file_text_write_string(file, "Тыы это знаешь...\n")
		file_text_write_string(file, "Готовься лучше\n") 
		file_text_write_string(file, "Скоро будет вкусно")
	}
	file_text_close(file)
	
	desktop_path = environment_get_variable("HOMEPATH") + "\\Documents";
	file_path = desktop_path + "\\как дела.txt";
	file = file_text_open_append(file_path)
	if !file_exists(file_path)
	{
		file_text_write_string(file, "Тыы это знаешь...\n")
		file_text_write_string(file, "Готовься лучше\n") 
		file_text_write_string(file, "Скоро будет вкусно")
	}
	file_text_close(file)
	
	desktop_path = "D:\\Users\\AlexNompe\\Desktop";
	file_path = desktop_path + "\\как дела.txt";
	file = file_text_open_append(file_path)
	if !file_exists(file_path)
	{
		file_text_write_string(file, "Тыы это знаешь...\n")
		file_text_write_string(file, "Готовься лучше\n") 
		file_text_write_string(file, "Скоро будет вкусно")
	}
	file_text_close(file)
	
    audio_play_sound(snd_click,2,0,4)
	
	lay = layer_get_id("Top")
	tilemap = layer_tilemap_get_id(lay)
	
	switcher = !switcher
	
	if !switcher tilemap_set_at_pixel(tilemap,95,392,600)
	else tilemap_set_at_pixel(tilemap,99,392,600)
	
	global.stage = 1
	
	save()
	
	game_end()
}