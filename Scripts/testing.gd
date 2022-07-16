extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
var label

func _ready():
	var label = Label.new() # Create a new Sprite.
	add_child(label) # Add it as a child of this node.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
