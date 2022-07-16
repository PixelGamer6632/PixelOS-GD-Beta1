extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var timer = get_node("/root/Control/ConfirmSignOut/Label/Timer")
onready var window = get_node("/root/Control/ConfirmSignOut")
onready var label = get_node("/root/Control/ConfirmSignOut/Label")

# Called when the node enters the scene tree for the first time.
func _pressed():
	window.visible = false
	timer.stop()
	label.text = "Are you sure you want to sign out? You will automatically be signed out in 60 seconds."


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
