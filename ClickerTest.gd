extends WindowDialog


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var click_amount = 1
var money = 0
var upgrade_price = 200
var auto_price = 50
var auto_amount = 0

func check_price():
	if money >= upgrade_price:
		$Button2.disabled = false
	else:
		$Button2.disabled = true
	if money >= auto_price:
		$Button3.disabled = false
	else:
		$Button3.disabled = true

func _on_Button_pressed():
	money += click_amount
	$Label.text = "$" + str(money)
	check_price()

func _on_upgrade_click_pressed():
	money -= upgrade_price
	click_amount *= 2
	$Label.text = "$" + str(money)
	check_price()

func _on_AutoClicker_timeout():
	money += auto_amount
	$Label.text = "$" + str(money)

func _on_AutoClick_pressed():
	money -= auto_price
	auto_amount += 1
	$AutoClicker.start()
	$Label.text = "$" + str(money)
	check_price()
