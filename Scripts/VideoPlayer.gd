extends VideoPlayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var player = get_node("/root/Control/Videos/VideoPlayer")

# Called when the node enters the scene tree for the first time.
func _ready():
	player.set_file("res://pixelos textures/Minecraft 1.12.2 2022-04-08 21-19-57.mp4")
	player.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
