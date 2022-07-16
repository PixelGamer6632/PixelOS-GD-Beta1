extends Button

onready var select_modes = get_node("/root/Control/PixelWriter/OptionButton")
onready var main_text_body = get_node("/root/Control/PixelWriter/TextEdit")
onready var main_text_body2 = get_node("/root/Control/PixelWriter/untitled")

# Called when the button is pressed.
func _pressed():
	if select_modes.text == "Edit Mode":
		if main_text_body.visible == true:
			main_text_body.readonly = false
		elif main_text_body2.visible == true:
			pass
		if main_text_body2.visible == true:
			main_text_body2.readonly = false
		elif main_text_body2.visible == false:
			pass
	elif select_modes.text == "Read Only":
		if main_text_body2.visible == true:
			main_text_body2.readonly = true
		elif main_text_body2.visible == false:
			pass
		if main_text_body.visible == true:
			main_text_body.readonly = true
		elif main_text_body2.visible == true:
			pass
