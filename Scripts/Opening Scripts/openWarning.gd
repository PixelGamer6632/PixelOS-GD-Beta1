extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var web_warning = get_node("/root/Control/WebWarning")

# Called when the node enters the scene tree for the first time.
func _pressed():
	web_warning.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
