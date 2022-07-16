extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var browser = get_node("/root/Control/Browser")
onready var eveulusearch_bar = get_node("/root/Control/Browser/LineEdit2")
onready var eveulusearch_button = get_node("/root/Control/Browser/Button3")
onready var eveulusearch_label = get_node("/root/Control/Browser/Label")
onready var tabs_popup = get_node("/root/Control/Alert Tabs")
onready var browser_tm = get_node("/root/Control/TaskManager/Button/VBoxContainer/Browser")
onready var tm_options = get_node("/root/Control/TaskManager/OptionButton")
onready var cynbutton1 = get_node("/root/Control/Browser/Cynco CynSearch/Button")
onready var cynbutton2 = get_node("/root/Control/Browser/Cynco CynSearch/Button4")
onready var cynbutton3 = get_node("/root/Control/Browser/Cynco CynSearch/Button5")
onready var cynbutton4 = get_node("/root/Control/Browser/Cynco CynSearch/Button6")
onready var cynbutton5 = get_node("/root/Control/Browser/Cynco CynSearch/Button7")
onready var cynhome = get_node("/root/Control/Browser/Cynco CynSearch/Sprite")
onready var all_app_menu = get_node("/root/Control/Menu/AllAppMenu")
onready var menu = get_node("/root/Control/Menu")
onready var browser_usage = get_node("/root/Control/TaskManager/VBoxContainer/BrowserUsage")
onready var browser_timer = get_node("/root/Control/TaskManager/VBoxContainer/Browser")

var search_engine = "Cynco CynSearch"
var times_opened = 0
var warned = 0
# Called when the node enters the scene tree for the first time.
func _pressed():
	browser.visible = true
	browser_tm.visible = true
	browser_usage.visible = true
	times_opened += 1
	#tabs_popup.visible = true
	menu.visible = false
	all_app_menu.visible = false
	if times_opened == 1:
		tm_options.add_item("Pixel Browser")
	if warned == 0:
		tabs_popup.visible = true
	if search_engine == "eveulu search":
		eveulusearch_bar.visible = true
		eveulusearch_button.visible = true
		eveulusearch_label.visible = true
	if search_engine == "Cynco CynSearch":
		cynbutton1.visible = true
		cynbutton2.visible = true
		cynbutton3.visible = true
		cynbutton4.visible = true
		cynbutton5.visible = true
		cynhome.visible = true
	browser_timer.start()
	
func _process(delta):
	if !browser.is_visible():
		browser_tm.visible = false
		browser_usage.visible = false
		browser_timer.stop()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Alert_Tabs_confirmed():
	warned = 1
