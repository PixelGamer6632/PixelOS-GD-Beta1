extends Button

onready var button = get_node("/root/Control/myPC")
onready var task_manager_item = get_node("/root/Control/TaskManager/VBoxContainer/myPCUsage")
onready var mypc_timer_tm = get_node("/root/Control/TaskManager/VBoxContainer/MyPC")
onready var mypc_tm = get_node("/root/Control/TaskManager/Button/VBoxContainer/myPC")
onready var options = get_node("/root/Control/TaskManager/OptionButton")
onready var menu = get_node("/root/Control/Menu")
onready var all_apps = get_node("/root/Control/Menu/AllAppMenu")

var times_opened = 0

func _pressed():
	button.visible = !button.visible
	task_manager_item.visible = true
	mypc_tm.visible = true
	times_opened += 1
	if times_opened == 1:
		options.add_item("MyPC File Explorer")
	menu.visible = false
	all_apps.visible = false
	mypc_timer_tm.start()

func _process(delta):
	if !button.is_visible():
		task_manager_item.visible = false
		mypc_tm.visible = false
		#options.remove_item("Writer 64 Bit")
