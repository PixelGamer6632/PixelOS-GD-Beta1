extends Button

onready var writer_main = get_node("/root/Control/WriterHome")
onready var writer_tm = get_node("/root/Control/TaskManager/Button/VBoxContainer/Writer")
onready var writer_usage = get_node("/root/Control/TaskManager/VBoxContainer/WriterUsage")
onready var writer_timer = get_node("/root/Control/TaskManager/VBoxContainer/Writer")
onready var options_tm = get_node("/root/Control/TaskManager/OptionButton")
onready var menu = get_node("/root/Control/Menu")
onready var all_apps = get_node("/root/Control/Menu/AllAppMenu")

var times_opened = 0

func _pressed():
	writer_main.visible = !writer_main.visible
	writer_tm.visible = true
	writer_usage.visible = true
	menu.visible = false
	all_apps.visible = false
	times_opened += 1
	if times_opened == 1:
		options_tm.add_item("Writer 64 Bit")
	writer_timer.start()

func _process(delta):
	if !writer_main.is_visible():
		writer_tm.visible = false
		writer_usage.visible = false
		writer_timer.stop()
