if instance_exists(o_player)
{
	if y <= o_player.y depth = o_player.depth + 1
	else depth = o_player.depth - 1
}
else draw_self()