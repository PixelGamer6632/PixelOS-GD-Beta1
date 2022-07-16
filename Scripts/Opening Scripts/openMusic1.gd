extends Button

onready var button = get_node("/root/Control/Music Player")
onready var timer = get_node("/root/Control/Music Player/AudioProgress/Timer")
onready var bar = get_node("/root/Control/Music Player/AudioProgress")
onready var options_tm = get_node("/root/Control/TaskManager/OptionButton")
onready var music_tm = get_node("/root/Control/TaskManager/Button/VBoxContainer/MusicPlayer")
onready var debug_music = get_node("/root/Control/Debug/MusicPlaying")
onready var player_usage = get_node("/root/Control/TaskManager/VBoxContainer/MusicPlayerUsage")
onready var player_timer = get_node("/root/Control/TaskManager/VBoxContainer/MusicPlayer")

var times_opened = 0

func _pressed():
	button.visible = !button.visible
	music_tm.visible = true
	player_usage.visible = true
	$AudioStreamPlayer2D.playing = !$AudioStreamPlayer2D.playing
	bar.max_value = 217
	print("Bar is set to ", bar.max_value,".")
	times_opened += 1
	if times_opened == 1:
		options_tm.add_item("Music Player")
	timer.start()
	player_timer.start()
	if $AudioStreamPlayer2D.playing == true:
		debug_music.text = "music_playing = true"
	else:
		debug_music.text = "music_playing = false"

func _process(delta):
	if !button.is_visible():
		music_tm.visible = false
		player_usage.visible = false
