extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var task_manager = get_node("/root/Control/TaskManager")
onready var menu = get_node("/root/Control/Menu")

# Called when the node enters the scene tree for the first time.
func _pressed():
	task_manager.visible = true
	menu.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
