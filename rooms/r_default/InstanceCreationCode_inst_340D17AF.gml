interaction_function = function()
{
    audio_play_sound(snd_click,2,0,4)
	
	lay = layer_get_id("Top")
	tilemap = layer_tilemap_get_id(lay)
	
	switcher = !switcher
	
	inst_3E055954.works = switcher
	
	if switcher tilemap_set_at_pixel(tilemap,95,293,950)
	else tilemap_set_at_pixel(tilemap,99,293,950)
}