extends ProgressBar


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var install_button = get_node("/root/Control/Store/AppPage/Download")

var space = 500
var space_remaining = 7500
var symbol = "GB"

var clicker_space = 234

func display(input):
	$Label.text = "Disk Space (" + str(input) + symbol + " Free / 8GB)"
	
func calc_space(number):
	space_remaining -= number
	print(space_remaining)
	if space_remaining >= 1000:
		symbol = "GB"
		display(space_remaining / 1000.0)
	else:
		symbol = "MG"
		display(space_remaining)
	self.value = space

# Called when the node enters the scene tree for the first time.
func _ready():
	space += 500
	self.value = space
	calc_space(0)

func _on_Button_pressed():
	space += clicker_space
	calc_space(clicker_space)

func _on_Download_pressed():
	if install_button.text == "Uninstall":
		space -= clicker_space
		space_remaining += clicker_space
		calc_space(0)
