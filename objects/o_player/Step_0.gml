move = [keyboard_check(ord("D")) - keyboard_check(ord("A")), keyboard_check(ord("S")) - keyboard_check(ord("W"))]

collision = o_collision

move_and_collide(move[0] * move_speed * delta_time / 10000 / 2, move[1] * move_speed * delta_time / 10000 / 2, collision)

if keyboard_check(ord("D")) or keyboard_check(ord("A")) or keyboard_check(ord("S")) or keyboard_check(ord("W")) global.player_moved = 1