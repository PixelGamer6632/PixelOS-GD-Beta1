extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var label = get_node("/root/Control/ConfirmSignOut/Label")
var count_down = 0
var string = "Are you sure you want to sign out? You will automatically be signed out in "
# Called when the node enters the scene tree for the first time.
func _ready():
	count_down = 60




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	count_down -= 1
	print("e")
	label.text = string + str(count_down) + " secconds." # Updates label so the number properly goes down by 1 every second.
	if count_down >= 1:
		$Timer.start()
	elif count_down < 1:
		get_tree().change_scene("res://LockScreen.tscn") # Logs out once timer runs out.


func _on_ConfirmSignOut_hide():
	$Timer.stop()
	count_down = 60
