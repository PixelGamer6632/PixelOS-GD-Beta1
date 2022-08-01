extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var clicker_game = get_node("/root/Control/ClickerTest")
onready var clicker_usage = get_node("/root/Control/TaskManager/VBoxContainer/ClickerUsage")
onready var clicker_tm = get_node("/root/Control/TaskManager/Button/VBoxContainer/ClickerTest")
onready var clicker_timer_tm = get_node("/root/Control/TaskManager/VBoxContainer/ClickerGame")
onready var menu = get_node("/root/Control/Menu")
onready var options = get_node("/root/Control/TaskManager/OptionButton")

func _pressed():
	clicker_game.visible = true
	clicker_usage.visible = true
	clicker_tm.visible = true
	menu.visible = false
	options.add_item("Clicker Test")
	clicker_timer_tm.start()

func _process(delta):
	if !clicker_game.is_visible():
		clicker_tm.visible = false
		options.remove_item(2)
		clicker_usage.visible = false
		clicker_timer_tm.stop()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
