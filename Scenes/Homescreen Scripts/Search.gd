extends LineEdit


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var search_engine = "Eveulu Search"

onready var options_browser = get_node("/root/Control/BrowserSettings/OptionButton")
onready var uhohbuddy = get_node("/root/Control/uh oh buddy")

# Called when the node enters the scene tree for the first time.
func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		if search_engine == "Eveulu Search":
			pass
		elif search_engine == "Cynco CynSearch":
			uhohbuddy.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	if options_browser.text == "Cynco(R) CynSearch(TM)":
		search_engine = "Cynco CynSearch"
	elif options_browser.text == "Eveulu Search":
		search_engine = "Eveulu Search"
