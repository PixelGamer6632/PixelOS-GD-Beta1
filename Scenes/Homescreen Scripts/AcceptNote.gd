extends AcceptDialog

onready var accept = get_node("/root/Control/Note")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()

func _on_Timer_timeout():
	accept.visible = !accept.visible
	$Timer.stop()
