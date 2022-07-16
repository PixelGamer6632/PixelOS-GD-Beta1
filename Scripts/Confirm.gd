extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var res_picker = get_node("/root/Control/Setup/ResolutionPicker")
onready var main = get_node("/root/Control/Setup/MainSetup")

# Called when the node enters the scene tree for the first time.
func _pressed():
	res_picker.visible = false
	main.visible = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
