extends ConfirmationDialog


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var selected_site = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_Button_pressed():
	selected_site = "Repository"

func _on_Button2_pressed():
	selected_site = "Source"

func _on_WebWarning_confirmed():
	if selected_site == "Source":
		OS.shell_open("https://github.com/PixelGamer6632/pixelos-gd")
	elif selected_site == "Repository":
		OS.shell_open("https://github.com/PixelGamer6632/pixelos-gd")
