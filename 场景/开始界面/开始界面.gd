extends TextureRect
# Called when the node enters the scene tree for the first time

#获得可执行文件所在路径：

func _ready():
	randomize()
#	var 游戏文件夹 = OS.get_executable_path()
	var 主界面 = Image.load_from_file("picture/bigmap/0.png")
	var 显示图 = ImageTexture.create_from_image(主界面)
	$".".texture = 显示图
	$Label.text = FileAccess.open("csv/版本说明.txt",FileAccess.READ).get_as_text()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

func 开始游戏():
	ChangeScene.场景改变("res://场景/模式选择.tscn")
	pass # Replace with function body.


func 结束游戏():
	get_tree().quit()


func 读取游戏():
	pass # Replace with function body.


func 设置():
	pass # Replace with function body.


func 更新记录():
	ChangeScene.场景改变("res://场景/开始界面/更新日志.tscn")
	pass # Replace with function body.
