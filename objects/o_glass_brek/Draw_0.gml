shake = [random_range(-4,4)*global.glass_timer,random_range(-4,4)*global.glass_timer]

for (i = 0; i < floor(random_count); i++)
{
	draw_line_width_color(x+shake[0],y+shake[1],x+shake[0]+random_x[i],y+shake[1]+random_y[i],random_size[i],c_black,c_black)
}

for (i = 0; i < floor(random_small_count); i++)
{
	draw_line_width_color(x+shake[0],y+shake[1],x+shake[0]+random_small_x[i],y+shake[1]+random_small_y[i],random_small_size[i],c_black,c_black)
}