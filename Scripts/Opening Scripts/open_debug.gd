extends Button

onready var debug = get_node("/root/Control/Debug")
onready var menu = get_node("/root/Control/Menu")
onready var all_apps = get_node("/root/Control/Menu/AllAppMenu")
onready var power_menu = get_node("/root/Control/Menu/PowerMenu")

func _pressed():
	debug.visible = true
	menu.visible = false
	all_apps.visible = false
	power_menu.visible = false
