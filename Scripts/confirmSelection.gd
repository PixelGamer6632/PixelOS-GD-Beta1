extends Button

onready var options_install = get_node("/root/Control/Browser/OptionButton2")
onready var cynsearch_shortcut = get_node("/root/Control/VBoxContainer2/Cynco")

func _pressed():
	if options_install.text == "Install CynSearch":
		cynsearch_shortcut.visible = true
