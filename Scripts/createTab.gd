extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var num_limit = 9
onready var base = get_node("/root/Control/Browser/HBoxContainer")
onready var options = get_node("/root/Control/Browser/OptionButton")
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
func use_limit(option_name):
	num_limit -= 1
	self.text = "Create Tab ["+str(num_limit)+" left]"
	options.get_popup().add_item(str(option_name))
	if num_limit < 1:
		self.disabled = true

func restore_create():
	num_limit += 1
	self.text = "Create Tab ["+str(num_limit)+" left]"
	self.disabled = false
	if num_limit > 8:
		num_limit = 9
	
func _pressed():
	if !tab2.is_visible():
		tab2.visible = true
		use_limit("Tab 2") # Sets the name of the tab in the option button on Browser.
	elif !tab3.is_visible():
		tab3.visible = true
		use_limit("Tab 3")
	elif !tab4.is_visible():
		tab4.visible = true
		use_limit("Tab 4")
	elif !tab5.is_visible():
		tab5.visible = true
		use_limit("Tab 5")
	elif !tab6.is_visible():
		tab6.visible = true
		use_limit("Tab 6")
	elif !tab7.is_visible():
		tab7.visible = true
		use_limit("Tab 7")
	elif !tab8.is_visible():
		tab8.visible = true
		use_limit("Tab 8")
	elif !tab9.is_visible():
		tab9.visible = true
		use_limit("Tab 9")
	elif !tab10.is_visible():
		tab10.visible = true
		use_limit("Tab 10")


func _on_Button2_pressed():
	if options.text == "Tab 2":
		tab2.visible = false
		restore_create()
	elif options.text == "Tab 3":
		tab3.visible = false
		restore_create()
	elif options.text == "Tab 4":
		tab4.visible = false
		restore_create()
	elif options.text == "Tab 5":
		tab5.visible = false
		restore_create()
	elif options.text == "Tab 6":
		tab6.visible = false
		restore_create()
	elif options.text == "Tab 7":
		tab7.visible = false
		restore_create()
	elif options.text == "Tab 8":
		tab8.visible = false
		restore_create()
	elif options.text == "Tab 9":
		tab9.visible = false
		restore_create()
	elif options.text == "Tab 10":
		tab10.visible = false
		restore_create()


func _on_Button_pressed():
	pass # Replace with function body.
