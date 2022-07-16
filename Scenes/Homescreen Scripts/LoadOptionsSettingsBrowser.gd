extends OptionButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.get_popup().add_item("Pixel Search")
	self.get_popup().add_item("Cynco(R) CynSearch(TM)")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
