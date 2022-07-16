extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var sprite = get_node("/root/Control/HBoxContainer/Sprite2")
var t = 0.0
#var b1 = load("res://pixelos textures/size_large/dock2.png").instance()
# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	t += delta * 0.4
	sprite.position = $A.position.linear_interpolate($B.position, t)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
