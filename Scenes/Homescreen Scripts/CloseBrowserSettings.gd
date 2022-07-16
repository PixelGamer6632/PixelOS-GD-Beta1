extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var BrowserSettings = get_node("/root/Control/BrowserSettings")

# Called when the node enters the scene tree for the first time.
func _pressed():
	BrowserSettings.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
