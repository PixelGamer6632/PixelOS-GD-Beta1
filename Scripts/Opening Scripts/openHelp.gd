extends Button

onready var help_menu = get_node("/root/Control/HelpMenu")
onready var menu = get_node("/root/Control/Menu")

func _pressed():
	help_menu.visible = !help_menu.visible
	menu.visible = false
