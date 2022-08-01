extends WindowDialog

onready var dock = get_node("/root/Control/Dock")
onready var taskbar = get_node("/root/Control/HBoxContainer3")
onready var taskbar2 = get_node("/root/Control/VBoxContainer")

onready var help = get_node("/root/Control/HBoxContainer3/Button2")
onready var file = get_node("/root/Control/HBoxContainer3/Button3")
onready var control = get_node("/root/Control/VBoxContainer/Button")

onready var help_toggle = $TaskBarIcons/Help
onready var file_toggle = $TaskBarIcons/Help2
onready var control_toggle = $TaskBarIcons/Help3

func _on_CheckButton_pressed():
	if $CheckButton.pressed == true:
		dock.visible = false
		taskbar.visible = false
		control.visible = true
		control_toggle.pressed = false
		control_toggle.disabled = true
	else:
		dock.visible = true
		taskbar.visible = true
		control_toggle.disabled = false

func _on_ConfirmationDialog_confirmed():
	dock.visible = true
	taskbar.visible = true
	taskbar2.visible = true
	help.visible = true
	file.visible = true

func _on_Help_toggled(button_pressed):
	help.visible = false
	if help_toggle.pressed == false:
		help.visible = true
	
func _on_Help2_toggled(button_pressed):
	file.visible = false
	if file_toggle.pressed == false:
		file.visible = true
	
func _on_Help3_toggled(button_pressed):
	taskbar2.visible = false
	if control_toggle.pressed == false:
		taskbar2.visible = true
