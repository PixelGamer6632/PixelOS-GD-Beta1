extends WindowDialog

onready var download = $AppPage/Download
onready var download_progress = $AppPage/ProgressBar

onready var clicker_icon = get_node("/root/Control/Menu/AllAppMenu/VBoxContainer/Button12")
onready var clicker_game = get_node("/root/Control/ClickerTest")

var installed = "false"

# Installing / Uninstalling ------------------------------------
func _on_Download_pressed():
	if download.text == "Download":
		download.disabled = true
		$WaitforDownload.start()
		randomize()
	elif download.text == "Uninstall":
		download.disabled = true
		$UninstallSpeed.start()

func _on_WaitforDownload_timeout():
	download_progress.value += rand_range(1,2)
	download_progress.visible = true
	$WaitforDownload.stop()
	$DownloadSpeed.start()

func _on_DownloadSpeed_timeout():
	download_progress.value += rand_range(5,10)
	$DownloadSpeed.wait_time = rand_range(0.1,0.3)
	if download_progress.value == 100:
		$StorePopup.visible = true
		download_progress.value = 0
		download_progress.visible = false
		$DownloadSpeed.stop()
		download.text = "Uninstall"
		download.disabled = false
		installed = "true"
		clicker_icon.visible = true

func _on_UninstallSpeed_timeout():
	installed = "false"
	$UninstallSpeed.stop()
	download.text = "Download"
	download.disabled = false
	clicker_icon.visible = false
	clicker_game.visible = false

# Other -----------------------------------------
func _on_ClickerTesticon_pressed():
	$AppPage.visible = true
	$StorePage.visible = false
