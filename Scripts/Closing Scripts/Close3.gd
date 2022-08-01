extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var store_popup = get_node("/root/Control/Store/StorePopup")

# Called when the node enters the scene tree for the first time.
func _pressed():
	store_popup.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
