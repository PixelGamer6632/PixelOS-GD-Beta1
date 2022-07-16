extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var wide = get_node("/root/Control/Setup/ResolutionPicker/Wide")
onready var confirm = get_node("/root/Control/Setup/ResolutionPicker/Confirm")

# Called when the node enters the scene tree for the first time.
func _pressed():
	self.disabled = true
	wide.disabled = false
	confirm.disabled = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
