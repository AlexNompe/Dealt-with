shake = [random_range(-4,4)*global.glass_timer+camera_get_view_x(view_camera[0]),random_range(-4,4)*global.glass_timer+camera_get_view_y(view_camera[0])]

for (i = 0; i < floor(random_count); i++)
{
	draw_line_width_color(x+shake[0],y+shake[1],x+shake[0]+random_x[i],y+shake[1]+random_y[i],random_size[i],c_black,c_black)
	draw_line_width_color(x+shake[0],y+shake[1],x+shake[0]+random_x[i]*1.1,y+shake[1]+random_y[i]*1.1,random_size[i]-2,c_black,c_black)
	draw_line_width_color(x+shake[0],y+shake[1],x+shake[0]+random_x[i]*1.2,y+shake[1]+random_y[i]*1.2,random_size[i]-1,c_black,c_black)
}

for (i = 0; i < floor(random_small_count); i++)
{
	draw_line_width_color(x+shake[0],y+shake[1],x+shake[0]+random_small_x[i],y+shake[1]+random_small_y[i],random_small_size[i],c_black,c_black)
	draw_line_width_color(x+shake[0],y+shake[1],x+shake[0]+random_small_x[i]*1.1,y+shake[1]+random_small_y[i]*1.1,random_small_size[i]-1,c_black,c_black)
}

if random_small_count >= 3
{
	draw_line_width_color(x+shake[0]+random_small_x[0],y+shake[1]+random_small_y[0],x+shake[0]+random_small_x[1],y+shake[1]+random_small_y[1],random_small_size[0],c_black,c_black)
	draw_line_width_color(x+shake[0]+random_small_x[1],y+shake[1]+random_small_y[1],x+shake[0]+random_small_x[2],y+shake[1]+random_small_y[2],random_small_size[1],c_black,c_black)
	draw_line_width_color(x+shake[0]+random_small_x[2],y+shake[1]+random_small_y[2],x+shake[0]+random_small_x[0],y+shake[1]+random_small_y[0],random_small_size[2],c_black,c_black)
}

if random_small_count >= 6
{
	draw_line_width_color(x+shake[0]+random_small_x[0],y+shake[1]+random_small_y[0],x+shake[0]+random_small_x[1],y+shake[1]+random_small_y[1],random_small_size[0],c_black,c_black)
	draw_line_width_color(x+shake[0]+random_small_x[1],y+shake[1]+random_small_y[1],x+shake[0]+random_small_x[2],y+shake[1]+random_small_y[2],random_small_size[1],c_black,c_black)
	draw_line_width_color(x+shake[0]+random_small_x[2],y+shake[1]+random_small_y[2],x+shake[0]+random_small_x[0],y+shake[1]+random_small_y[0],random_small_size[2],c_black,c_black)
	
	draw_line_width_color(x+shake[0]+random_small_x[0+3],y+shake[1]+random_small_y[0+3],x+shake[0]+random_small_x[1+3],y+shake[1]+random_small_y[1+3],random_small_size[0],c_black,c_black)
	draw_line_width_color(x+shake[0]+random_small_x[1+3],y+shake[1]+random_small_y[1+3],x+shake[0]+random_small_x[2+3],y+shake[1]+random_small_y[2+3],random_small_size[1],c_black,c_black)
	draw_line_width_color(x+shake[0]+random_small_x[2+3],y+shake[1]+random_small_y[2+3],x+shake[0]+random_small_x[0+3],y+shake[1]+random_small_y[0+3],random_small_size[2],c_black,c_black)
}