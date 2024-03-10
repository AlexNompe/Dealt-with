global.glass_timer = 1

random_count = floor(random_range(4,9)*(global.glass_broken+1)/2)
random_x = array_create(floor(random_count),0)
for (i = 0; i < array_length(random_x); i++)
{
	random_x[i] = random_point_on_circle()[0]*random_range(200,1000)
}
random_y = array_create(floor(random_count),0)
for (i = 0; i < array_length(random_y); i++)
{
	random_y[i] = random_point_on_circle()[1]*random_range(200,1000)
}
random_size = array_create(floor(random_count),0)
for (i = 0; i < array_length(random_size); i++)
{
	random_size[i] = random_range(3,4)
}

random_small_count = floor(random_range(5,11)*(global.glass_broken+1)/4)
random_small_triangles = random_range(3,5)
random_small_x = array_create(floor(random_small_count),0)
for (i = 0; i < array_length(random_small_x); i++)
{
	random_small_x[i] = random_point_on_circle()[0]*random_range(50,100)
}
random_small_y = array_create(floor(random_small_count),0)
for (i = 0; i < array_length(random_small_y); i++)
{
	random_small_y[i] = random_point_on_circle()[1]*random_range(50,100)
}
random_small_size = array_create(floor(random_small_count),0)
for (i = 0; i < array_length(random_small_size); i++)
{
	random_small_size[i] = random_range(2,3)
}