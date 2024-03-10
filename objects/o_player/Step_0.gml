move = [keyboard_check(ord("D")) - keyboard_check(ord("A")), keyboard_check(ord("S")) - keyboard_check(ord("W"))]

x += move[0] * move_speed * delta_time / 10000 / 2
y += move[1] * move_speed * delta_time / 10000 / 2

if keyboard_check(ord("D")) or keyboard_check(ord("A")) or keyboard_check(ord("S")) or keyboard_check(ord("W")) global.player_moved = 1