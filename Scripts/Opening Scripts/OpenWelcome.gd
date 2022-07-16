extends WindowDialog

func _on_Note_confirmed():
	$Timer.start()

func _on_Timer_timeout():
	self.visible = true
	$Timer.stop()

func _on_Button4_pressed():
	self.visible = false
