extends WindowDialog


# Declare member variables here. Examples:
# var a = 2
# var b = 

onready var timer = $Timer
onready var total_ram = $Label2

onready var usage1 = $VBoxContainer/DockUsage
onready var usage2 = $VBoxContainer/TaskManagerUsage
onready var writer_usage = $VBoxContainer/WriterUsage
onready var settings_usage = $VBoxContainer/SettingsUsage
onready var browser_usage = $VBoxContainer/BrowserUsage
onready var music_usage = $VBoxContainer/MusicPlayerUsage
onready var mypc_usage = $VBoxContainer/myPCUsage

var usage = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	update_usage(writer_usage,400,"MG")
	update_usage(settings_usage,300,"MG")
	update_usage(browser_usage,800,"MG")

func _precess(delta):
	pass

func update_usage(node,max_int,type):
	node.text = str(randi() % max_int) + type

func _on_Timer_timeout():
	update_usage(usage1,40,"MG")
	update_usage(usage2,150,"MG")

func _on_Writer_timeout():
	update_usage(writer_usage,400,"MG")

func _on_Settings_timeout():
	update_usage(settings_usage,300,"MG")

func _on_Browser_timeout():
	update_usage(browser_usage,800,"MG")

func _on_MusicPlayer_timeout():
	update_usage(music_usage,400,"MG")
	
func _on_MyPC_timeout():
	update_usage(mypc_usage,200,"MG")
