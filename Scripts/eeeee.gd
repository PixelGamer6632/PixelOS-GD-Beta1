extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print(position.x)
	$Timer.start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	position.y -= 4
	if position.y <= 50:
		position.y += 4

		$Timer.start()


func _on_Area2D_body_entered(body):
	print("test")
