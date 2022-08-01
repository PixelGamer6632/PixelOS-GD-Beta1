extends WindowDialog


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
	pass


func _on_OK_pressed():
	if selected_site == "Source":
		OS.shell_open("https://github.com/PixelGamer6632/PixelOS-GD-Beta1")
	elif selected_site == "Repository":
		OS.shell_open("https://github.com/PixelGamer6632/PixelOS-GD-Beta1")


func _on_Cancel_pressed():
	self.visible = false
