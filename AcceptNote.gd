extends WindowDialog

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()

func _on_Timer_timeout():
	self.visible = true
	$Timer.stop()

func _on_OK_pressed():
	self.visible = false
