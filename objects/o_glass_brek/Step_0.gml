if global.glass_timer > 0
{
	global.glass_timer -= 1 * delta_time / 1000000 / global.glass_broken
}
else global.glass_timer = 0