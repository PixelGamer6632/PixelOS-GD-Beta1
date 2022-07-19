extends Button

onready var error = get_node("/root/Control/Error")
onready var all_apps = get_node("/root/Control/Menu/AllAppMenu")
onready var menu = get_node("/root/Control/Menu")

func _pressed():
	error.visible = true
	all_apps.visible = false
	menu.visible = false
