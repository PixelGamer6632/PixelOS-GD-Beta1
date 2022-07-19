extends Button

onready var settings = get_node("/root/Control/MainSettings")
onready var control_panel = get_node("/root/Control/Control Panel")
onready var menu = get_node("/root/Control/Menu")
onready var all_apps = get_node("/root/Control/Menu/AllAppMenu")
onready var settings_tm = get_node("/root/Control/TaskManager/Button/VBoxContainer/Settings")
onready var settings_usage = get_node("/root/Control/TaskManager/VBoxContainer/SettingsUsage")
onready var settings_timer = get_node("/root/Control/TaskManager/VBoxContainer/Settings")
onready var options = get_node("/root/Control/TaskManager/OptionButton")

var test = "Settings"

func _pressed():
	settings.visible = true
	menu.visible = false
	all_apps.visible = false
	control_panel.visible = false
	settings_tm.visible = true
	settings_usage.visible = true
	options.add_item(test)
	settings_timer.start()

func _process(delta):
	if !settings.is_visible():
		settings_tm.visible = false
		options.remove_item(2)
		settings_usage.visible = false
		settings_timer.stop()
