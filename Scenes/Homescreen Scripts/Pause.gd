extends Button


onready var audio = get_node("/root/Control/myPC/VBoxContainer/Button/AudioStreamPlayer2D")
#onready var pause = get_node("/root/Control/Music Player/Pause")
onready var timer = get_node("/root/Control/Music Player/AudioProgress")

func _pressed():
	audio.stream_paused = !audio.stream_paused
	if self.text == "Pause":
		self.text = "Resume"
		get_tree().paused = true
	elif self.text == "Resume":
		self.text = "Pause"
		get_tree().paused = false
