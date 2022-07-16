extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var welcome = get_node("/root/Control/Welcome")
onready var help_menu = get_node("/root/Control/HelpMenu")

# Called when the node enters the scene tree for the first time.
func _pressed():
	welcome.visible = true
	help_menu.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
