extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var browser_settings = get_node("/root/Control/BrowserSettings")

# Called when the node enters the scene tree for the first time.
func _pressed():
	browser_settings.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
