// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function random_point_on_circle(){
	theta = random(1) * 2 * pi
    r = sqrt(random(2))
    return [r * cos(theta), r * sin(theta)]
}