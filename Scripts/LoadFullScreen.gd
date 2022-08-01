extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	OS.set_window_fullscreen(true)
	pass

func _process(delta):
	if Input.is_action_pressed("ExitFullScreen"):
		OS.set_window_fullscreen(false)
	elif Input.is_action_pressed("EnterFullScreen"):
		OS.set_window_fullscreen(true)

func _on_Note_confirmed():
	pass # Replace with function body.


func _on_Sprite2_body_entered(body):
	queue_free()


func _on_Help3_toggled(button_pressed):
	pass # Replace with function body.
