extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var debug = get_node("/root/Control/Debug")
onready var menu = get_node("/root/Control/Menu")
onready var all_apps = get_node("/root/Control/Menu/AllAppMenu")
onready var power_menu = get_node("/root/Control/Menu/PowerMenu")

# Called when the node enters the scene tree for the first time.
func _pressed():
	debug.visible = true
	menu.visible = false
	all_apps.visible = false
	power_menu.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
