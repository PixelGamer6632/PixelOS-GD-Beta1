extends Button

onready var button = get_node("/root/Control/HBoxContainer2/Sprite")

func _pressed():
	print("click detected")
	button.visible = !button.visible
	print("script working")
