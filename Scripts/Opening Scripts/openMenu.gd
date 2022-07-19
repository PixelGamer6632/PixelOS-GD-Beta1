extends Button

onready var menu = get_node("/root/Control/Menu")
onready var all_apps = get_node("/root/Control/Menu/AllAppMenu")
onready var power = get_node("/root/Control/Menu/PowerMenu")
onready var help_menu = get_node("/root/Control/HelpMenu")

var is_hidden = 0

func _pressed():
	all_apps.visible = true
	power.visible = false
	menu.visible = !menu.visible
	help_menu.visible = false

func _process(delta):
	if Input.is_action_pressed("OpenMenu"):
		$Timer.start()

func _on_Timer_timeout():
	menu.visible = !menu.visible
	$Timer.stop()
