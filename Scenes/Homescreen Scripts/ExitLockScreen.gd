extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var comfirm = get_node("/root/Control/ConfirmSignOut")
onready var timer = get_node("/root/Control/ConfirmSignOut/Label/Timer")

# Called when the node enters the scene tree for the first time.
func _pressed():
	comfirm.visible = true
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
