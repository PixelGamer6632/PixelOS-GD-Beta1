extends Control


# This script does not do anything. It may be removed in a later update. It is only kept incase I do not have any more options.
# ---------
var isUsed = "setup_not_used"
func save(content):
	var file = File.new()
	file.open("user://save.txt", File.WRITE)
	file.store_string(content)
	file.close()

func load():
	var file = File.new()
	file.get_line(1)
	
	file.open("user://save.txt", File.READ)
	var content = file.get_as_text()
	
	var begin = file.get_position()
	file.store_var("1")
	file.seek(begin)
	print(file.get_var())
	
	file.close()
	return content
# ---------


# Called when the node enters the scene tree for the first time.
func _ready():
	#OS.set_window_fullscreen(true)
	save(isUsed)
	print(load("setup_not_used")) # This line also may be removed later.


func _on_Confirm2_pressed():
	isUsed = "setup_used"
	save(isUsed) # Same for this function.
	
