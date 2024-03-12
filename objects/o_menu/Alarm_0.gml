if save_var_place != room room_goto(save_var_place)
	
o_player.x = save_var_position[0]
o_player.y = save_var_position[1]

audio_play_sound(break_sounds[random_range(0, array_length(break_sounds))],1,0,1,0,random_range(90,110)/100)
	
global.glass_broken = 8
			
glass = instance_create_layer(random_range(0,672),random_range(0,384),"Instances",o_glass_brek)

array_insert(global.broke, array_get_index(global.broke, array_last(global.broke)), glass)