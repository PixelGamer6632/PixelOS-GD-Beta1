extends WindowDialog

onready var label = $fps
onready var web_warning = get_node("/root/Control/WebWarning")

# Called when the node enters the scene tree for the first time.
func _process(delta):
	$fps.text = "fps = " + str(Engine.get_frames_per_second())


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	web_warning.visible = true
