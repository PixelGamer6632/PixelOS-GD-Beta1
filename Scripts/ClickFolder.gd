extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var all_files = get_node("/root/Control/myPC/VBoxContainer")
onready var folder1 = get_node("/root/Control/myPC/Sprite")
onready var folder2 = get_node("/root/Control/myPC/Sprite2")
onready var label1 = get_node("/root/Control/myPC/Label")
onready var label2 = get_node("/root/Control/myPC/Label2")
onready var pic = get_node("/root/Control/myPC/Sprite3")
onready var pic2 = get_node("/root/Control/myPC/Pixelos3Pic")
onready var pixelos1label = get_node("/root/Control/myPC/Label3")
onready var pixelos3label = get_node("/root/Control/myPC/Label4")

# Called when the node enters the scene tree for the first time.
func _pressed():
	all_files.visible = false
	folder1.visible = false
	folder2.visible = false
	label1.visible = false
	label2.visible = false
	pic.visible = true
	pic2.visible = true
	pixelos1label.visible = true
	pixelos3label.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
