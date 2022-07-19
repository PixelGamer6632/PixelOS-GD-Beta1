extends WindowDialog

var selected_tab = "Tab1"
var search_engine = "Eveulu Search"
var site_selected = []
var site1 = search_engine
var site2 = search_engine
var site3 = search_engine
var site4 = search_engine
var site5 = search_engine
var site6 = search_engine
var site7 = search_engine
var site8 = search_engine
var site9 = search_engine
var site10 = search_engine
var current_tab = 1
var tracker_enabled = false
var tab = {}
var warned = 0

onready var Tab1 = get_node("/root/Control/Browser/HBoxContainer/Tab1")

# Called when the node enters the scene tree for the first time.
func _ready():
	Tab1.disabled = true
	if search_engine == "Eveulu Search":
		eveulu_main.visible = true
	elif search_engine == "Cynco CynSearch":
		cynco_home.visible = true

onready var search_box = $LineEdit
onready var search_box2 = get_node("/root/Control/Browser/Eveulu Search/LineEdit2")
onready var search_button = get_node("/root/Control/Browser/Eveulu Search/Button3")
onready var option_engine = get_node("/root/Control/BrowserSettings/OptionButton")
onready var track_comfirm = get_node("/root/Control/BrowserSettings/CheckButton")
onready var pixelsearch_logo = get_node("/root/Control/Browser/Eveulu Search/Sprite2")
onready var Tab2 = $HBoxContainer/Tab2
onready var Tab3 = $HBoxContainer/Tab3
onready var Tab4 = $HBoxContainer/Tab4
onready var Tab5 = $HBoxContainer/Tab5
onready var Tab6 = $HBoxContainer/Tab6
onready var Tab7 = $HBoxContainer/Tab7
onready var Tab8 = $HBoxContainer/Tab8
onready var Tab9 = $HBoxContainer/Tab9
onready var Tab10 = $HBoxContainer/Tab10

onready var eveulu_main = get_node("/root/Control/Browser/Eveulu Search")
onready var cynco_home = get_node("/root/Control/Browser/Cynco CynSearch")

onready var cynco_main = get_node("/root/Control/Browser/Cynco CynSearch/Sprite")
onready var search1 = get_node("/root/Control/Browser/Cynco CynSearch/Button")
onready var search2 = get_node("/root/Control/Browser/Cynco CynSearch/Button4")
onready var search3 = get_node("/root/Control/Browser/Cynco CynSearch/Button5")
onready var search4 = get_node("/root/Control/Browser/Cynco CynSearch/Button6")
onready var search5 = get_node("/root/Control/Browser/Cynco CynSearch/Button7")

func select_current_tab():
	Tab2.disabled = false
	Tab3.disabled = false
	Tab4.disabled = false
	Tab5.disabled = false
	Tab6.disabled = false
	Tab7.disabled = false
	Tab8.disabled = false
	Tab9.disabled = false
	Tab10.disabled = false

var main_tab = 1

func track(item,app):
	if tracker_enabled == true:
		print("user:"+item+" on app:"+app)
		
func set_search_engine(site_name,dict_name):
	if search_engine == "Cynco CynSearch":
		site_name = "Cynco CynSearch"
		tab[dict_name] = [cynco_home]
	if search_engine == "Eveulu Search":
		site_name = "Eveulu Search"
		tab[dict_name] = [eveulu_main]

func save_on_create(): # This function switches to the next tab up.
	current_tab += 1
	if current_tab == 2:
		main_tab = site2
		set_search_engine(site2,"Tab2")
		print(main_tab)
	if current_tab == 3:
		main_tab = site3
		set_search_engine(site3,"tab3")
		print(main_tab)
	if current_tab == 4:
		main_tab = site4
		set_search_engine(site4,"tab4")
		print(main_tab)
	if current_tab == 5:
		main_tab = site5
		set_search_engine(site5,"Tab5")
		print(main_tab)
	if current_tab == 6:
		main_tab = site6
		set_search_engine(site6,"Tab6")
		print(main_tab)
	if current_tab == 7:
		main_tab = site7
		set_search_engine(site7,"Tab7")
		print(main_tab)
	if current_tab == 8:
		main_tab = site8
		set_search_engine(site8,"tab8")
		print(main_tab)
	if current_tab == 9:
		main_tab = site9
		set_search_engine(site9,"Tab9")
		print(main_tab)
	if current_tab == 10:
		main_tab = site10
		set_search_engine(site10,"Tab10")
		print(main_tab)

#func save_tab(site):
	#if site == "Cynco CynSearch":
		#load_cynsearch()
		
	#elif site == "eveulu search":
		#load_eveulusearch()
	

func _on_Tab1_pressed():
	selected_tab = "Tab1"
	select_current_tab()
	Tab1.disabled = true
	#save_tab(site1)
	if site1 == "Cynco CynSearch":
		site10 = "Cynco CynSearch"
		load_cynsearch()
		print(site1)
	if site1 == "Eveulu Search":
		site10 = "Eveulu Search"
		load_eveulusearch()
		print(site1)
	print(site1)

func create_tab(node1,node2,node3,node4,node5,node6,node7,node8,node9,node10,selectedtab):
	selected_tab = selectedtab
	node1.disabled = false
	node2.disabled = false
	node3.disabled = false
	node4.disabled = false
	node5.disabled = false
	node6.disabled = false
	node7.disabled = false
	node8.disabled = false
	node9.disabled = false
	node10.disabled = true

func add_site(site_num1,site_num2):
	if site_num1 == "Cynco CynSearch":
		site_num2 = "Cynco CynSearch"
		load_cynsearch()
		print(site2)
	if site_num1 == "Eveulu Search":
		site_num2 = "Eveulu Search"
		load_eveulusearch()
		print(site_num1)
	print(site_num1)

func load_site(dict,dict2,dict3,dict4,dict5,dict6,dict7,dict8,dict9,dict10):
	tab[dict][0].visible = true
	tab[dict2][0].visible = false
	tab[dict3][0].visible = false
	tab[dict4][0].visible = false
	tab[dict5][0].visible = false
	tab[dict6][0].visible = false
	tab[dict7][0].visible = false
	tab[dict8][0].visible = false
	tab[dict9][0].visible = false
	tab[dict10][0].visible = false

func _on_Tab2_pressed():
	create_tab(Tab1,Tab3,Tab4,Tab5,Tab6,Tab7,Tab8,Tab9,Tab10,Tab2,"Tab2")
	#add_site(site2,site10)
	load_site("Tab2","Tab1","Tab3","Tab4","Tab5","Tab6","Tab7","Tab8","Tab9","Tab10")

func _on_Tab3_pressed():
	create_tab(Tab1,Tab2,Tab4,Tab5,Tab6,Tab7,Tab8,Tab9,Tab10,Tab3,"Tab3")
	#add_site(site3,site10)
	load_site("Tab3","Tab1","Tab2","Tab4","Tab5","Tab6","Tab7","Tab8","Tab9","Tab10")
	
func _on_Tab4_pressed():
	create_tab(Tab1,Tab2,Tab3,Tab5,Tab6,Tab7,Tab8,Tab9,Tab10,Tab4,"Tab4")
	#add_site(site4,site10)
	load_site("Tab4","Tab1","Tab2","Tab3","Tab5","Tab6","Tab7","Tab8","Tab9","Tab10")

func _on_Tab5_pressed():
	create_tab(Tab1,Tab2,Tab3,Tab4,Tab6,Tab7,Tab8,Tab9,Tab10,Tab5,"Tab5")
	#add_site(site5,site10)
	load_site("Tab5","Tab1","Tab2","Tab3","Tab4","Tab6","Tab7","Tab8","Tab9","Tab10")

func _on_Tab6_pressed():
	create_tab(Tab1,Tab2,Tab3,Tab4,Tab5,Tab7,Tab8,Tab9,Tab10,Tab6,"Tab6")
	#add_site(site6,site10)
	load_site("Tab6","Tab1","Tab2","Tab3","Tab4","Tab5","Tab7","Tab8","Tab9","Tab10")

func _on_Tab7_pressed():
	create_tab(Tab1,Tab2,Tab3,Tab4,Tab5,Tab6,Tab8,Tab9,Tab10,Tab7,"Tab7")
	#add_site(site7,site10)
	load_site("Tab7","Tab1","Tab2","Tab3","Tab4","Tab5","Tab6","Tab8","Tab9","Tab10")

func _on_Tab8_pressed():
	create_tab(Tab1,Tab2,Tab3,Tab4,Tab5,Tab6,Tab7,Tab9,Tab10,Tab8,"Tab8")
	#add_site(site8,site10)
	load_site("Tab8","Tab1","Tab2","Tab3","Tab4","Tab5","Tab6","Tab7","Tab9","Tab10")

func _on_Tab9_pressed():
	create_tab(Tab1,Tab2,Tab3,Tab4,Tab5,Tab6,Tab7,Tab8,Tab10,Tab9,"Tab9")
	#add_site(site9,site10)
	load_site("Tab9","Tab1","Tab2","Tab3","Tab4","Tab5","Tab6","Tab7","Tab8","Tab10")

func _on_Tab10_pressed():
	create_tab(Tab1,Tab2,Tab3,Tab4,Tab5,Tab6,Tab7,Tab8,Tab9,Tab10,"Tab10")
	#add_site(site10,site10)
	load_site("Tab10","Tab1","Tab2","Tab3","Tab4","Tab5","Tab6","Tab7","Tab8","Tab9")


func _on_LineEdit_text_entered(new_text):
	if selected_tab == "Tab1":
		Tab1.text = search_box.text
	elif selected_tab == "Tab2":
		Tab2.text = search_box.text
	elif selected_tab == "Tab3":
		Tab3.text = search_box.text
	elif selected_tab == "Tab4":
		Tab4.text = search_box.text
	elif selected_tab == "Tab5":
		Tab5.text = search_box.text
	elif selected_tab == "Tab6":
		Tab6.text = search_box.text
	elif selected_tab == "Tab7":
		Tab7.text = search_box.text
	elif selected_tab == "Tab8":
		Tab8.text = search_box.text
	elif selected_tab == "Tab9":
		Tab9.text = search_box.text
	elif selected_tab == "Tab10":
		Tab10.text = search_box.text
	search_box.text = ""
	if search_box.text == "eveulusearch.com/":
		search_box.text = "Search with Eveulu Search or enter address."
		search_box2.visible = true
		search_button.visible = true

func search():
	if search_box2.text != "" and search_box2.text != " ":
		track(search_box2.text,"browser")
		if selected_tab == "Tab1":
			Tab1.text = search_box2.text
		elif selected_tab == "Tab2":
			Tab2.text = search_box2.text
		elif selected_tab == "Tab3":
			Tab3.text = search_box2.text
		elif selected_tab == "Tab4":
			Tab4.text = search_box2.text
		elif selected_tab == "Tab5":
			Tab5.text = search_box2.text
		elif selected_tab == "Tab6":
			Tab6.text = search_box2.text
		elif selected_tab == "Tab7":
			Tab7.text = search_box2.text
		elif selected_tab == "Tab8":
			Tab8.text = search_box2.text
		elif selected_tab == "Tab9":
			Tab9.text = search_box2.text
		elif selected_tab == "Tab10":
			Tab10.text = search_box2.text
		search_box2.text = ""

func _on_LineEdit2_text_entered(new_text):
	search()

func _on_Button3_pressed():
	search()

func _on_Button_pressed():
	if option_engine.text == "Cynco(R) CynSearch(TM)":
		search_engine = "Cynco CynSearch"
	elif option_engine.text == "Pixel Search":
		search_engine = "Eveulu Search"
	#if track_comfirm.pressed == true:
		#tracker_enabled = true
	#elif track_comfirm.pressed == false:
		#track_comfirm = false
	#track("applied_settings","browser_settings")

func load_eveulusearch():
	search_box2.visible = true
	search_button.visible = true
	cynco_main.visible = false
	search1.visible = false
	search2.visible = false
	search3.visible = false
	search4.visible = false
	search5.visible = false
	pixelsearch_logo.visible = true
	
func load_cynsearch():
	cynco_main.visible = true
	search1.visible = true
	search2.visible = true
	search3.visible = true
	search4.visible = true
	search5.visible = true
	search_box2.visible = false
	search_button.visible = false
	pixelsearch_logo.visible = false

#func _on_CreateTab_pressed():
#	save_on_create()
#	if search_engine == "Eveulu Search":
#		load_eveulusearch()
#		main_tab = "Eveulu Search"
#		print(main_tab)
#		#selected_tab.append("eveulu")
#	if search_engine == "Cynco CynSearch":
#		load_cynsearch()
#		main_tab = "Cynco CynSearch"
#		print(main_tab)
#		#selected_tab.append("cynsearch")


func _on_Home_pressed():
	if search_engine == "Eveulu Search":
		#load_eveulusearch()
		eveulu_main.visible = true
		cynco_home.visible = false
		$PixelFAQ.visible = false
	elif search_engine == "Cynco CynSearch":
		#load_cynsearch()
		cynco_home.visible = true
		eveulu_main.visible = false
		$PixelFAQ.visible = false


func _on_FAQ_pressed():
	$PixelFAQ.visible = true
	cynco_home.visible = false
	eveulu_main.visible = false
	self.visible = true


func _on_Alert_Tabs_confirmed():
	pass # Replace with function body.
