extends Button

var timeDict = OS.get_time();
var hour = timeDict.hour;
var minute = timeDict.minute;
var seconds = timeDict.second;

onready var control_panel = get_node("/root/Control/Control Panel")

func _process(delta):
	self.text = str(hour)+":"+str(minute)
	self.text = str(hour)+":"+str(minute)

func _pressed():
	control_panel.visible = !control_panel.visible
