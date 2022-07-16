extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var target : float
var moveSprite = true
# Called when the node enters the scene tree for the first time.
func _process(delta):
	#var move = lerp(moveSprite.y, target, .3)
	#self.moveSprite.y = move
	#position.y -= 3
	#if position.y >= 70:
		#position.y += 3
		#print(position.y)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	if moveSprite && position.y >= 0:
		position.y -= 3
