extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var settings = get_node("/root/Control/MainSettings")
onready var control_panel = get_node("/root/Control/Control Panel")
onready var menu = get_node("/root/Control/Menu")
onready var settings_tm = get_node("/root/Control/TaskManager/Button/VBoxContainer/Settings")
onready var settings_usage = get_node("/root/Control/TaskManager/VBoxContainer/SettingsUsage")
onready var settings_timer = get_node("/root/Control/TaskManager/VBoxContainer/Settings")

# Called when the node enters the scene tree for the first time.
func _pressed():
	settings.visible = true
	menu.visible = false
	control_panel.visible = false
	settings_tm.visible = true
	settings_usage.visible = true
	settings_timer.start()

func _process(delta):
	if !settings.is_visible():
		settings_tm.visible = false
		settings_usage.visible = false
		settings_timer.stop()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
