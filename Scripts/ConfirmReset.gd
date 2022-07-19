extends Button

onready var confirmationreset = get_node("/root/Control/MainSettings/ConfirmationDialog")

func _pressed():
	confirmationreset.visible = true
