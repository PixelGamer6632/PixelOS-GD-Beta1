extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var writer_main = get_node("/root/Control/WriterHome")
onready var writer_tm = get_node("/root/Control/TaskManager/Button/VBoxContainer/Writer")
onready var writer_usage = get_node("/root/Control/TaskManager/VBoxContainer/WriterUsage")
onready var writer_timer = get_node("/root/Control/TaskManager/VBoxContainer/Writer")
onready var options_tm = get_node("/root/Control/TaskManager/OptionButton")
onready var menu = get_node("/root/Control/Menu")

var times_opened = 0
# Called when the node enters the scene tree for the first time.
func _pressed():
	writer_main.visible = !writer_main.visible
	writer_tm.visible = true
	writer_usage.visible = true
	menu.visible = false
	times_opened += 1
	if times_opened == 1:
		options_tm.add_item("Writer 64 Bit")
	writer_timer.start()

func _process(delta):
	if !writer_main.is_visible():
		writer_tm.visible = false
		writer_usage.visible = false
		writer_timer.stop()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
