extends WindowDialog


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var dock = get_node("/root/Control/HBoxContainer")
onready var taskbar = get_node("/root/Control/HBoxContainer3")
onready var taskbar2 = get_node("/root/Control/VBoxContainer")

onready var help = get_node("/root/Control/HBoxContainer3/Button2")
onready var file = get_node("/root/Control/HBoxContainer3/Button3")

onready var help_toggle = get_node("/root/Control/MainSettings/TaskBarIcons/Help")
onready var file_toggle = get_node("/root/Control/MainSettings/TaskBarIcons/Help2")
onready var control_toggle = get_node("/root/Control/MainSettings/TaskBarIcons/Help3")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_CheckButton_pressed():
	if $CheckButton.pressed == true:
		dock.visible = false
		taskbar.visible = false
	else:
		dock.visible = true
		taskbar.visible = true

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
