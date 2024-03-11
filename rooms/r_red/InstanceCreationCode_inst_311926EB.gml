interaction_function = function()
{
    audio_play_sound(snd_click,2,0,4)
	
	lay = layer_get_id("Top")
	tilemap = layer_tilemap_get_id(lay)
	
	switcher = !switcher
	
	if switcher inst_897C82.mask_index = spr_noone
	else inst_897C82.mask_index = spr_collision_diagonal1x1
	
	if switcher inst_274F0800.mask_index = spr_noone
	else inst_274F0800.mask_index = spr_collision_diagonal1x1
	
	if switcher tilemap_set_at_pixel(tilemap,95,1848,200)
	else tilemap_set_at_pixel(tilemap,99,1848,200)
	
	if switcher tilemap_set_at_pixel(tilemap,95,842,120)
	else tilemap_set_at_pixel(tilemap,99,842,120)
	
	if switcher tilemap_set_at_pixel(tilemap,95,760,200)
	else tilemap_set_at_pixel(tilemap,99,760,200)
}