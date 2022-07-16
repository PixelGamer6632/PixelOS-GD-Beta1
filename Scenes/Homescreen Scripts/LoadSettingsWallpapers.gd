extends OptionButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.get_popup().add_item("PixelOS 7")
	self.get_popup().add_item("PixelOS 6")
	self.get_popup().add_item("PixelOS 3")
	self.get_popup().add_item("Cynco")
	self.get_popup().add_item("Caylian Isles")
	self.get_popup().add_item("Night")
	self.get_popup().add_item("City")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
