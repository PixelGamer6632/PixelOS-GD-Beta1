extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var line_edit = get_node("/root/Control/SetName/LineEdit")
onready var user_name = get_node("/root/Control/HBoxContainer2/Rkv9Cos8/Label")
onready var set_name_window =  get_node("/root/Control/SetName")

# Called when the node enters the scene tree for the first time.
func _pressed():
	user_name.text = line_edit.text
	set_name_window.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
