extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var untitled = get_node("/root/Control/PixelWriter/untitled")
onready var untitled_2 = get_node("/root/Control/myPC/VBoxContainer/Button4")
onready var readme = get_node("/root/Control/PixelWriter/TextEdit")
onready var readme_2 = get_node("/root/Control/myPC//VBoxContainer/Button2")
var doc_opened = "untitled"
# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = "0 Characters"

func count_characters(document):
	self.text = str(len(document.text)) + " Characters"

func _process(delta):
	if doc_opened == "untitled":
		count_characters(untitled)
	elif doc_opened == "readme":
		count_characters(readme)

func _on_Button_pressed():
	doc_opened = "readme"

func _on_Button3_pressed():
	doc_opened = "untitled"

func _on_Button4_pressed():
	doc_opened = "untitled"

func _on_readmebutton_pressed():
	doc_opened = "readme"
