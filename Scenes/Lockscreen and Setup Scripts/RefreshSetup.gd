extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var setup = get_node("/root/Control/ResolutionPicker")
onready var setup2 = get_node("/root/Control/MainSetup")

# Called when the node enters the scene tree for the first time.
func _pressed():
	if !setup2.is_visible():
		setup.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
