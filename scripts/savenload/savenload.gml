// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save(file = "save.ini"){
	ini = ini_open(file)
	
	ini_write_real("save", 0, global.menu_open)
	
	ini_close()
}

function load(file = "save.ini"){
	ini = ini_open(file)
	
	if ini_section_exists("save")
	{
		global.menu_open = ini_read_real("save",0,1)
	}
	else save()
}
