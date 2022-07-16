extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var input_name = get_node("/root/Control/Setup/MainSetup/Name")
onready var user_name = get_node("/root/Control/HBoxContainer2/Rkv9Cos8/Label")
onready var password = get_node("/root/Control/HBoxContainer2/Rkv9Cos8/Button")
onready var ui = get_node("/root/Control/Setup")
onready var window = get_node("/root/Control/Setup/MainSetup")

var Name = ""
var isUsed = 0

func _ready():
	if isUsed == 1:
		ui.visible = false
		window.visible = false

# Called when the node enters the scene tree for the first time.
func _pressed():
	user_name.text = input_name.text
	#emit_signal("input_name", input_name.global_position)
	#get_tree().change_scene("res://LockScreen.tscn")
	ui.visible = false
	window.visible = false
	isUsed = 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
