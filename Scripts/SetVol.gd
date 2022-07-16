extends HSlider


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var music = get_node("/root/Control/myPC/VBoxContainer/Button/AudioStreamPlayer2D")
onready var vol_debug = get_node("/root/Control/Debug/Volume")

# Called when the node enters the scene tree for the first time.
func _process(delta):
	music.volume_db = self.value
	vol_debug.text = "volume = " + str(self.value)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
