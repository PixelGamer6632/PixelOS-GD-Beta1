extends Button

onready var button = get_node("/root/Control/Menu/AllAppMenu")
onready var power = get_node("/root/Control/Menu/PowerMenu")

func _pressed():
	button.visible = !button.visible
	power.visible = false
