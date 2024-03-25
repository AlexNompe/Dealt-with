if !o_dialog_system.is_dialog move = [keyboard_check(ord("D")) - keyboard_check(ord("A")), keyboard_check(ord("S")) - keyboard_check(ord("W"))]
else move = [0,0]

if abs(move[0]) + abs(move[1]) != 0 move_multiplier = sqrt((abs(move[0]) + abs(move[1])))/(abs(move[0]) + abs(move[1]))

collision = o_collision

move_and_collide(move[0] * move_speed * delta_time / 10000 / 2 * move_multiplier, move[1] * move_speed * delta_time / 10000 / 2 * move_multiplier, collision)

if keyboard_check(ord("D")) or keyboard_check(ord("A")) or keyboard_check(ord("S")) or keyboard_check(ord("W")) 
{
	global.player_moved = 1
	if !o_dialog_system.is_dialog image_speed = move_speed / 4 * delta_time / 10000
	else image_speed = 0
	
	if timer > 0
	{
		timer -= 1 * delta_time / 1000000
	}
	else
	{
		audio_play_sound_at(walkie_sounds[walkie_bool],camera_get_view_x(view_camera[0])+672/2-x,camera_get_view_y(view_camera[0])+384/2-y,0,100,800,1,0,3,0.125,0,random_range(90,110)/100)
		walkie_bool = !walkie_bool
		timer = 0.42
	}
	
	if !o_dialog_system.is_dialog interaction_move = [keyboard_check(ord("D")) - keyboard_check(ord("A")), keyboard_check(ord("S")) - keyboard_check(ord("W"))]
}
else image_speed = 0

if instance_exists(o_interactable) and place_meeting(x + interaction_move[0] * 8, y + interaction_move[1] * 8, o_interactable) and keyboard_check_pressed(vk_space) instance_nearest(x + interaction_move[0] * 8, y + interaction_move[1] * 8, o_interactable).interaction_function()

if move[1] == 1
{
	sprite_index = spr_player_move_front
}
else if move[1] == -1
{
	sprite_index = spr_player_move_back
}
else if move[0] != 0 
{
	image_xscale = move[0]
	sprite_index = spr_player_move_side
}