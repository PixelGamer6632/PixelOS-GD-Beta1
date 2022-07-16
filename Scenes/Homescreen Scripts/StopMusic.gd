extends WindowDialog


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var music = get_node("/root/Control/myPC/VBoxContainer/Button/AudioStreamPlayer2D")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


#func _on_Music_Player_hide():
	#music.stream_paused = !music.stream_paused
