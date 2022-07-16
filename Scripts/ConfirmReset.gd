extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var confirmationreset = get_node("/root/Control/MainSettings/ConfirmationDialog")

# Called when the node enters the scene tree for the first time.
func _pressed():
	confirmationreset.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
