extends Control

func _ready():
	OS.set_window_fullscreen(true)

func _process(delta):
	if Input.is_action_pressed("ExitFullScreen"):
		OS.set_window_fullscreen(false)
	elif Input.is_action_pressed("EnterFullScreen"):
		OS.set_window_fullscreen(true)
