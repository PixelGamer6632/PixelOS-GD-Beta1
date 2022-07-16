extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var search_box = get_node("/root/Control/Browser/LineEdit")
onready var Tab2 = get_node("/root/Control/Browser/HBoxContainer/Tab2")
onready var Tab3 = get_node("/root/Control/Browser/HBoxContainer/Tab3")
onready var Tab4 = get_node("/root/Control/Browser/HBoxContainer/Tab4")
onready var Tab5 = get_node("/root/Control/Browser/HBoxContainer/Tab5")
onready var Tab6 = get_node("/root/Control/Browser/HBoxContainer/Tab6")
onready var Tab7 = get_node("/root/Control/Browser/HBoxContainer/Tab7")
onready var Tab8 = get_node("/root/Control/Browser/HBoxContainer/Tab8")
onready var Tab9 = get_node("/root/Control/Browser/HBoxContainer/Tab9")
onready var Tab10 = get_node("/root/Control/Browser/HBoxContainer/Tab10")

# Called when the node enters the scene tree for the first time.
func _pressed():
	Tab2.disabled = false
	Tab3.disabled = false
	Tab4.disabled = false
	Tab5.disabled = false
	Tab6.disabled = false
	Tab7.disabled = false
	Tab8.disabled = false
	Tab9.disabled = false
	Tab10.disabled = false
	self.disabled = true
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


#func _on_LineEdit_text_entered(new_text):
#	if selected_tab == "Tab1":
#		self.text = search_box.text


#func _on_Tab2_pressed():
#	selected_tab = "Tab2"
