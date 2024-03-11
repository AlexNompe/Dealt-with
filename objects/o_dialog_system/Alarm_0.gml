timer = 0.25

if dialog_progress < array_length(global.dialog_text)
{
	local_dialog_text = global.dialog_text[dialog_progress]
}
else
{
	is_dialog = false
	global.dialog_text = [""]
	timer = 0
	dialog_progress = -1
}