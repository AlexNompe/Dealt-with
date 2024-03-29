// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save(file = "save.ini"){
	ini = ini_open(file)
	
	ini_write_real("save", 0, global.menu_open)
	ini_write_real("save", 1, global.flag_meany)
	ini_write_real("save", 2, global.stage)
	ini_write_real("save", 3, global.flag_secret_holder)
	
	ini_close()
}

function load(file = "save.ini"){
	ini = ini_open(file)
	
	if ini_section_exists("save")
	{
		global.menu_open = ini_read_real("save",0,1)
		global.flag_meany = ini_read_real("save",1,0)
		global.stage = ini_read_real("save",2,0)
		global.flag_secret_holder = ini_read_real("save",3,0)
	}
	else save()
}
