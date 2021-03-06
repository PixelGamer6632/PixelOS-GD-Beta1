extends Button

onready var Writer_Readme = get_node("/root/Control/PixelWriter")
onready var Writer_Untitled = get_node("/root/Control/PixelWriter/untitled")
onready var readme = get_node("/root/Control/PixelWriter/TextEdit")
onready var myself = get_node("/root/Control/myPC/VBoxContainer/Button3")
onready var main_writer = get_node("/root/Control/WriterHome")
onready var doc_opened = get_node("/root/Control/Debug/DocOpened")

# Called when the node is pressed.
func _pressed():
	Writer_Readme.visible = !Writer_Readme.visible
	Writer_Readme.window_title = self.text + " - Writer"
	Writer_Untitled.visible = false
	readme.visible = true
	main_writer.visible = false
	doc_opened.text = "doc_opened = README.wdoc"
