extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var pixelos1 = get_node("/root/Control/ImageView2")

# Called when the node enters the scene tree for the first time.
func _pressed():
	pixelos1.visible = true
	pixelos1.window_title = self.text + "- ImageView"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
