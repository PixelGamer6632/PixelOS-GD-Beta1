extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var SigninBox = get_node("/root/Control/HBoxContainer2/TextEdit")

# Called when the node enters the scene tree for the first time.
func _pressed():
	if SigninBox.text == "password":
		get_tree().change_scene("res://Scenes/Homescreen.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Setup_visibility_changed():
	pass # Replace with function body.
