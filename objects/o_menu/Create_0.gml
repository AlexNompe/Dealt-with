randomize()

window_set_fullscreen(true)

window_set_caption("Хихихи")

window_set_color(c_black)

global.menu_open = true

global.flag_meany = false

global.stage = 0

load()

if global.menu_open == false
{
	if global.stage == 0
	{
		window_set_caption("Это ты")
		instance_create_layer(336,192,"Interactable",o_player)
	}
	else if global.stage == 1
	{
		if !global.flag_meany window_set_caption("Ты со мной")
		else window_set_caption("идиотина")
		instance_create_layer(336,192+384,"Interactable",o_player)
	}
}

button_positions = [[318,318]]
default_button_size = [40, 24]

break_sounds = [snd_break_0,snd_break_1,snd_break_2,snd_break_3]

global.broke = []

local_timer = 15

scary_sound_went_off = false

global.glass_broken = 0

global.menu_timer = 0

global.player_moved = 0

save_var_place = r_default
save_var_position = [0,0]