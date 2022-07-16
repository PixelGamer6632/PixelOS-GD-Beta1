extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var renameOpen = get_node("/root/Control/RenameFrame")

func _pressed():
	renameOpen.visible = !renameOpen.visible
