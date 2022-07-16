extends OptionButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.get_popup().add_item("Site Permissions")
	self.get_popup().add_item("Install PixelSearch")
	self.get_popup().add_item("Install CynSearch")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
