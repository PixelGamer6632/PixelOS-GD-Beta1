extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var main_files = get_node("/root/Control/myPC/VBoxContainer")
onready var pixelos1png = get_node("/root/Control/myPC/Sprite3")
onready var pixelos3png = get_node("/root/Control/myPC/Pixelos3Pic")
onready var folder_icon1 = get_node("/root/Control/myPC/Sprite")
onready var folder_icon2 = get_node("/root/Control/myPC/Sprite2")
onready var folder_icon1button = get_node("/root/Control/myPC/Sprite")
onready var pixelos1label = get_node("/root/Control/myPC/Label3")
onready var pixelos3label = get_node("/root/Control/myPC/Label4")
onready var label1 = get_node("/root/Control/myPC/Label")
onready var label2 = get_node("/root/Control/myPC/Label2")

# Called when the node enters the scene tree for the first time.
func _pressed():
	main_files.visible = true
	pixelos1png.visible = false
	pixelos3png.visible = false
	folder_icon1.visible = true
	folder_icon2.visible = true
	folder_icon1button.visible = true
	label1.visible = true
	label2.visible = true
	pixelos1label.visible = false
	pixelos3label.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
