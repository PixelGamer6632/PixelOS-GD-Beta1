extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var wallpaper_options = get_node("/root/Control/MainSettings/OptionButton2")
onready var debug_wallpaper = get_node("/root/Control/Debug/Wallpaper")
# Wallpapers -------------------------
onready var pixelos6 = get_node("/root//Control/HBoxContainer2/Sprite2")
onready var pixelos7 = get_node("/root/Control/HBoxContainer2/Rkv9Cos8")
onready var pixelos3 = get_node("/root/Control/HBoxContainer2/pixelos3")
onready var cynco = get_node("/root/Control/HBoxContainer2/Sprite3")
onready var city = get_node("/root/Control/HBoxContainer2/Sprite4")
onready var night = get_node("/root/Control/HBoxContainer2/Sprite5")
onready var ct = get_node("/root/Control/HBoxContainer2/Sprite6")

var wallpaper = "PixelOS 7"

# Called when the node enters the scene tree for the first time.
func _pressed():
	if wallpaper_options.text == "PixelOS 6":
		pixelos6.visible = true
		pixelos7.visible = false
		cynco.visible = false
		city.visible = false
		night.visible = false
		pixelos3.visible = false
		ct.visible = false
		wallpaper = "PixelOS 6"
	elif wallpaper_options.text == "PixelOS 7":
		pixelos7.visible = true
		pixelos6.visible = false
		cynco.visible = false
		city.visible = false
		night.visible = false
		pixelos3.visible = false
		ct.visible = false
		wallpaper = "PixelOS 7"
	elif wallpaper_options.text == "Cynco":
		pixelos6.visible = false
		pixelos7.visible = false
		cynco.visible = true
		city.visible = false
		night.visible = false
		pixelos3.visible = false
		ct.visible = false
		wallpaper = "Cynco"
	elif wallpaper_options.text == "City":
		pixelos7.visible = false
		pixelos6.visible = false
		cynco.visible = false
		city.visible = true
		night.visible = false
		pixelos3.visible = false
		ct.visible = false
		wallpaper = "City"
	elif wallpaper_options.text == "Night":
		pixelos7.visible = false
		pixelos6.visible = false
		cynco.visible = false
		city.visible = false
		night.visible = true
		pixelos3.visible = false
		ct.visible = false
		wallpaper = "Night"
	elif wallpaper_options.text == "PixelOS 3":
		pixelos7.visible = false
		pixelos6.visible = false
		cynco.visible = false
		city.visible = false
		night.visible = false
		pixelos3.visible = true
		ct.visible = false
		wallpaper = "PixelOS 3"
	elif wallpaper_options.text == "Caylian Isles":
		pixelos7.visible = false
		pixelos6.visible = false
		cynco.visible = false
		city.visible = false
		night.visible = false
		pixelos3.visible = true
		ct.visible = true
		wallpaper = "Caylian Isles"
	debug_wallpaper.text = "wallpaper - " + wallpaper

func _on_ConfirmationDialog_confirmed():
	pixelos7.visible = true
	pixelos6.visible = false
	cynco.visible = false
	city.visible = false
	night.visible = false
	pixelos3.visible = false
	ct.visible = false
	wallpaper_options.text = "PixelOS 7"
	wallpaper = "PixelOS 7"
	debug_wallpaper.text = "wallpaper - PixelOS 7"
