extends OptionButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.get_popup().add_item("Center")
	self.get_popup().add_item("Left")
	self.get_popup().add_item("Right")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ConfirmationDialog_confirmed():
	self.text = "Center"
