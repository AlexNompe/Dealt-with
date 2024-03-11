if is_dialog
{
	draw_set_halign(fa_center)
	draw_set_font(f_hello)
	
	var dialog_position = [672/2, 384*3/4]
	
	draw_rectangle(dialog_position[0]-160,dialog_position[1],dialog_position[0]+160,dialog_position[1]+80,c_white)
	
	draw_text_ext_transformed(dialog_position[0]+offset[0],dialog_position[1]+offset[1],local_dialog_text,80,2240,0.16,0.16,0)
}
	