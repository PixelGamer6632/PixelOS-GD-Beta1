extends WindowDialog

var display = ""
var equasion = 0
var equasion_type = ""
var finalize = 0
var num1 = 0
var num2 = 0

func check_if_0(number): # If the display displays just the number 0, then sets the 0 to the number, if not, add the number onto the display.
	if display == "0":
		display = number
	else:
		display += number

func _on_7_pressed():
	check_if_0("7")
	$Display.text = display

func _on_8_pressed():
	check_if_0("8")
	$Display.text = display

func _on_9_pressed():
	check_if_0("9")
	$Display.text = display

func _on_4_pressed():
	check_if_0("4")
	$Display.text = display

func _on_5_pressed():
	check_if_0("5")
	$Display.text = display

func _on_6_pressed():
	check_if_0("6")
	$Display.text = display

func _on_1_pressed():
	check_if_0("1")
	$Display.text = display

func _on_2_pressed():
	check_if_0("2")
	$Display.text = display

func _on_3_pressed():
	check_if_0("3")
	$Display.text = display

func _on_Clear_pressed():
	display = "0"
	$Display.text = display
	$Add.disabled = false

func _on_Add_pressed():
	display += "+"
	equasion_type = "Addition"
	$Display.text = display
	$Add.disabled = true
	$Subtract.disabled = false

func _on_0_pressed():
	display += "0"
	$Display.text = display

func sum(symbol):
	equasion = display.split(symbol) # Splits up the numbers in the equasion into an array.
	num1 = int(equasion[0])
	num2 = int(equasion[1])
	
func reset_symbols():
	$Add.disabled = false
	$Subtract.disabled = false
	$Multiply.disabled = false
	$Divide.disabled = false

func _on__pressed():
	if equasion_type == "Addition":
		sum("+")
		finalize = num1 + num2
		display = str(finalize)
		$Display.text = str(finalize)
		$Label.text = str(num1) + " + " + str(num2) + " = " + str(finalize) # Converts num1 and num2 to a string, than adds them.
		reset_symbols()
	if equasion_type == "Subtract":
		sum("-")
		finalize = num1 - num2
		display = str(finalize)
		$Display.text = str(finalize)
		$Label.text = str(num1) + " - " + str(num2) + " = " + str(finalize) # Converts num1 and num2 to a string, than adds them.
		reset_symbols()
	if equasion_type == "Multiply":
		sum("x")
		finalize = num1 * num2
		display = str(finalize)
		$Display.text = str(finalize)
		$Label.text = str(num1) + " x " + str(num2) + " = " + str(finalize) # Converts num1 and num2 to a string, than adds them.
		reset_symbols()
	if equasion_type == "Divide":
		sum("÷")
		finalize = num1 / num2
		display = str(finalize)
		$Display.text = str(finalize)
		$Label.text = str(num1) + " ÷ " + str(num2) + " = " + str(finalize) # Converts num1 and num2 to a string, than adds them.
		reset_symbols()

func _on_Subtract_pressed():
	display += "-"
	equasion_type = "Subtract"
	$Display.text = display
	$Multiply.disabled = true
	$Add.disabled = true
	$Divide.disabled = true

func _on_Multiply_pressed():
	display += "x"
	equasion_type = "Multiply"
	$Display.text = display
	$Multiply.disabled = true
	$Add.disabled = true
	$Divide.disabled = true

func _on_Divide_pressed():
	display += "÷"
	equasion_type = "Divide"
	$Display.text = display
	$Multiply.disabled = true
	$Add.disabled = true
	$Divide.disabled = true
