extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var clicker_game = get_node("/root/Control/ClickerTest")

# Called when the node enters the scene tree for the first time.
func _pressed():
	clicker_game.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
