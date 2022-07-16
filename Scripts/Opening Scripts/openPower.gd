extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var power_menu = get_node("/root/Control/Menu/PowerMenu")
onready var all_app_menu = get_node("/root/Control/Menu/AllAppMenu")

# Called when the node enters the scene tree for the first time.
func _pressed():
	power_menu.visible = !power_menu.visible
	all_app_menu.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
