extends Button

onready var button = get_node("/root/Control/About")
onready var help_menu = get_node("/root/Control/HelpMenu")

func _pressed():
	button.visible = !button.visible
	help_menu.visible = false
