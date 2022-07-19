extends Button

onready var power_menu = get_node("/root/Control/Menu/PowerMenu")
onready var all_app_menu = get_node("/root/Control/Menu/AllAppMenu")

func _pressed():
	power_menu.visible = !power_menu.visible
	all_app_menu.visible = false
