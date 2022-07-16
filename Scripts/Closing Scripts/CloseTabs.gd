extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var options = get_node("/root/Control/Browser/OptionButton")
onready var create_tab = get_node("/root/Control/Browser/Button")
onready var tab2 = get_node("/root/Control/Browser/HBoxContainer/Tab2")
onready var tab3 = get_node("/root/Control/Browser/HBoxContainer/Tab3")
onready var tab4 = get_node("/root/Control/Browser/HBoxContainer/Tab4")
onready var tab5 = get_node("/root/Control/Browser/HBoxContainer/Tab5")
onready var tab6 = get_node("/root/Control/Browser/HBoxContainer/Tab6")
onready var tab7 = get_node("/root/Control/Browser/HBoxContainer/Tab7")
onready var tab8 = get_node("/root/Control/Browser/HBoxContainer/Tab8")
onready var tab9 = get_node("/root/Control/Browser/HBoxContainer/Tab9")
onready var tab10 = get_node("/root/Control/Browser/HBoxContainer/Tab10")
# Called when the node enters the scene tree for the first time.

func _ready():
	self.disabled = true

#func restore_create():
	#create_tab.disabled = false

#func _pressed():
	#if options.text == "Tab 2":
		#tab2.visible = false
	#elif options.text == "Tab 3":
		#tab3.visible = false
	#elif options.text == "Tab 4":
		#tab4.visible = false
	#elif options.text == "Tab 5":
		#tab5.visible = false
	#elif options.text == "Tab 6":
		#tab6.visible = false
	#elif options.text == "Tab 7":
		#tab7.visible = false
	#elif options.text == "Tab 8":
		#tab8.visible = false
	#elif options.text == "Tab 9":
		#tab9.visible = false
	#elif options.text == "Tab 10":
		#tab10.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	self.disabled = false
