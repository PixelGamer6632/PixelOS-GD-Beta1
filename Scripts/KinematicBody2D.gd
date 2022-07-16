extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed = 3
var screen_size
# Called when the node enters the scene tree for the first time.
func _ready():
	move_toward(400, 4, 4)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
