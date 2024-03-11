interaction_function = function()
{
    audio_play_sound(snd_click,2,0,4)
	
	with o_dialog_system
	{
		dialog_progress += 1
		
		global.dialog_text = ["Всё, что вы можете разобрать, это " + environment_get_variable("USERNAME"), "Остальная часть текста стёрлась со временем..."]
		
		alarm[0] = 1
		
		is_dialog = true
	}
}