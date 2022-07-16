extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var user_name = get_node("/root/SetName")
func _ready():
	#self.text = user_name
	#var user = get_tree().get_root().find_node("Confirm2", true, false)
	#user.connect("input_name", self, "handleuser_name")
# Called when the node enters the scene tree for the first time.
#func handleuser_name(username):
	#elf.text = input_name.text
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
