extends Button

onready var options = get_node("/root/Control/RenameFrame/OptionButton")
onready var text_input = get_node("/root/Control/RenameFrame/TextEdit")
onready var rename_frame = get_node("/root/Control/RenameFrame")
onready var writer = get_node("/root/Control/PixelWriter")
onready var writer_readme = get_node("/root/Control/WriterHome/Button")
onready var writer_untitled = get_node("/root/Control/WriterHome/Button3")
onready var amp_strings = get_node("/root/Control/myPC/VBoxContainer/Button")
onready var pixelos3 = get_node("/root/Control/myPC/VBoxContainer/Button2")
onready var readme = get_node("/root/Control/myPC/VBoxContainer/Button3")
onready var untitled = get_node("/root/Control/myPC/VBoxContainer/Button4")
onready var pixelos1 = get_node("/root/Control/myPC/VBoxContainer/Button5")
onready var pixlos1_label = get_node("/root/Control/myPC/Label3")
onready var pixlos3_label = get_node("/root/Control/myPC/Label4")

func reset(): # resets renaming diolog window for when the user can change another name.
	rename_frame.visible = false
	text_input.text = ""
	options.text = "Select File"

func _pressed():
	if options.text == "ambiant_piano_with_strings.mp3":
		amp_strings.text = text_input.text + ".mp3" # If user inputed new name: then change file name o what user inputed.
		reset()
	elif options.text == "pixelos3.png":
		pixelos3.text = text_input.text + ".png"
		pixlos3_label.text = text_input.text + ".png"
		reset()
	elif options.text == "README.wdoc":
		readme.text = text_input.text + ".wdoc"
		writer_readme.text = text_input.text
		reset()
	elif options.text == "untitled.wdoc":
		untitled.text = text_input.text + ".wdoc"
		writer_untitled.text = text_input.text
		reset()
	elif options.text == "pixelos1.png":
		pixelos1.text = text_input.text + ".png"
		pixlos1_label.text = text_input.text + ".png"
		reset()
