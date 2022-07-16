extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var timeDict = OS.get_time();
var hour = timeDict.hour;
var minute = timeDict.minute;
var seconds = timeDict.second;

onready var control_panel = get_node("/root/Control/Control Panel")
# Called when the node enters the scene tree for the first time.
func _process(delta):
	self.text = str(hour)+":"+str(minute)

func _pressed():
	control_panel.visible = !control_panel.visible

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
