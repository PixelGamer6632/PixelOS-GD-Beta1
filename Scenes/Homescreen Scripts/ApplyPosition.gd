extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var settings_options = get_node("/root/Control/MainSettings/OptionButton")
onready var dock = get_node("/root/Control/HBoxContainer/Area2D/Sprite2")
onready var debug_pos = get_node("/root/Control/Debug/DockPos")

onready var size_wide = get_node("/root/Control/MainSettings/Button4")
onready var size_average = get_node("/root/Control/MainSettings/Button5")

onready var beta_label = get_node("/root/Control/Label")
onready var wip_label = get_node("/root/Control/Label2")

onready var pixelos6 = get_node("/root//Control/HBoxContainer2/Sprite2")
onready var pixelos7 = get_node("/root/Control/HBoxContainer2/Rkv9Cos8")
onready var pixelos3 = get_node("/root/Control/HBoxContainer2/pixelos3")
onready var cynco = get_node("/root/Control/HBoxContainer2/Sprite3")
onready var city = get_node("/root/Control/HBoxContainer2/Sprite4")
onready var night = get_node("/root/Control/HBoxContainer2/Sprite5")
onready var ct = get_node("/root/Control/HBoxContainer2/Sprite6")

var pos = "middle"
var display_size = "average"
var wallpaper = "PixelOS 7"

# Called when the node enters the scene tree for the first time.
func _pressed():
	if settings_options.text == "Left":
		if display_size == "wide":
			dock.position.x = -1300
		elif display_size == "average":
			dock.position.x = -530
		pos = "left"
	elif settings_options.text == "Center":
		dock.position.x = 37.5
		pos = "middle"
	elif settings_options.text == "Right":
		dock.position.x = 425
		pos = "right"
	debug_pos.text = "dock_pos = " + pos

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ConfirmationDialog_confirmed():
	dock.position.x = 37.5
	debug_pos.text = "dock_pos = middle"

func _on_wide_pressed():
	display_size = "wide"
	size_wide.disabled = true
	size_average.disabled = false
	pixelos7.visible = false
	pixelos6.visible = false
	cynco.visible = false
	city.visible = true
	night.visible = false
	pixelos3.visible = false
	ct.visible = false
	wallpaper = "City"
	

func _on_average_pressed():
	display_size = "average"
	size_wide.disabled = false
	size_average.disabled = true
