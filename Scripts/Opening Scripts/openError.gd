extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var error = get_node("/root/Control/Error")

# Called when the node enters the scene tree for the first time.
func _pressed():
	error.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
