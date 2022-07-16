extends Button

onready var button = get_node("/root/Control/ImageView")


func _pressed():
	button.visible = !button.visible
