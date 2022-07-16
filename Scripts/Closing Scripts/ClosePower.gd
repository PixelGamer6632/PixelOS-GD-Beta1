extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var closePower = get_node("/root/Control/Menu/PowerMenu")
# Called when the node enters the scene tree for the first time.
func _pressed():
	closePower.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
