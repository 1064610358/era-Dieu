extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	var File = FileAccess.open("csv/更新日志.txt",FileAccess.READ)
	$"TextureRect/MarginContainer/VBoxContainer/MarginContainer/文本显示框".text = "[center]"+File.get_as_text()
	pass # Replace with function body.

func _on_button_pressed():
	ChangeScene.场景改变("res://场景/开始界面/开始界面.tscn")
	pass # Replace with function body.
