extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	OS.set_window_fullscreen(!OS.window_fullscreen)


func _process(delta):
	if Input.is_action_pressed("ExitFullScreen"):
		OS.set_window_fullscreen(false)
