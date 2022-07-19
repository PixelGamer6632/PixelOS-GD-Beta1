extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var quit_options = get_node("/root/Control/TaskManager/OptionButton")
onready var dock2 = get_node("/root/Control/TaskManager/Button/VBoxContainer/Dock")
onready var dock_usage = get_node("/root/Control/TaskManager/VBoxContainer/DockUsage")
onready var dock = get_node("/root/Control/HBoxContainer")
onready var main = get_node("/root/Control/TaskManager")
onready var writer = get_node("/root/Control/WriterHome")
onready var browser = get_node("/root/Control/Browser")
onready var mypc = get_node("/root/Control/myPC")
onready var music_player = get_node("/root/Control/Music Player")

# Called when the node enters the scene tree for the first time.
func _pressed():
	if quit_options.text == "PixelDock":
		dock.visible = false
		dock2.visible = false
		dock_usage.visible = false
	if quit_options.text == "Task Manager":
		main.visible = false
	if quit_options.text == "Writer 64 Bit":
		writer.visible = false
	if quit_options.text == "Pixel Browser":
		browser.visible = false
	if quit_options.text == "MyPC File Explorer":
		mypc.visible = false
	if quit_options.text == "Music Player":
		music_player.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
