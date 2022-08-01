extends Button

onready var pixel_store = get_node("/root/Control/Store")
onready var store_usage = get_node("/root/Control/TaskManager/VBoxContainer/StoreUsage")
onready var store_tm = get_node("/root/Control/TaskManager/Button/VBoxContainer/PixelStore")
onready var store_timer_tm = get_node("/root/Control/TaskManager/VBoxContainer/Store")
onready var menu = get_node("/root/Control/Menu")
onready var options = get_node("/root/Control/TaskManager/OptionButton")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var test = "Pixel Store"

# Called when the node enters the scene tree for the first time.
func _pressed():
	pixel_store.visible = true
	store_usage.visible = true
	store_tm.visible = true
	menu.visible = false
	options.add_item(test)
	store_timer_tm.start()

func _process(delta):
	if !pixel_store.is_visible():
		store_tm.visible = false
		options.remove_item(2)
		store_usage.visible = false
		store_timer_tm.stop()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
