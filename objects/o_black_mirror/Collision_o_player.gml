if !collided
{
	audio_play_sound(break_sounds[random_range(0, array_length(break_sounds))],1,0,1,0,random_range(90,110)/100)
	
	global.glass_broken = 8
				
	glass = instance_create_layer(camera_get_view_x(view_camera[0]) + random_range(0,672),camera_get_view_y(view_camera[0]) + random_range(0,384),"Instances",o_glass_brek)
	
	array_insert(global.broke, array_get_index(global.broke, array_last(global.broke)), glass)
	
	o_menu.save_var_place = var_place
	o_menu.save_var_position = var_position
	
	o_menu.alarm[0] = 1
	
	collided = true
}