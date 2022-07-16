extends ProgressBar


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var audio_time = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	
	value += 1
	print("bar goes up 1")
	if self.value == 100:
		value = 0
