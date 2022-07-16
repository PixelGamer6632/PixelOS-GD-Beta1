extends Button

onready var button = get_node("/root/Control/Settings")

func _pressed():
	button.visible = !button.visible
