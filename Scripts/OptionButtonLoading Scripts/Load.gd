extends OptionButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.get_popup().add_item("ambiant_piano_with_strings.mp3")
	self.get_popup().add_item("pixelos3.png")
	self.get_popup().add_item("README.wdoc")
	self.get_popup().add_item("untitled.wdoc")
	self.get_popup().add_item("pixelos1.png")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
