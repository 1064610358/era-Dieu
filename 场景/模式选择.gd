extends Control
@onready var 游戏难度按钮组: HBoxContainer = $"MarginContainer/HBoxContainer/模式选择页/VBoxContainer/HBoxContainer/游戏难度按钮组"
@onready var 游戏难度按钮: Button = $"MarginContainer/HBoxContainer/模式选择页/VBoxContainer/HBoxContainer/游戏难度按钮组/Button"
@onready var 游戏难度注释: Label = $"MarginContainer/HBoxContainer/模式选择页/VBoxContainer/游戏难度注释"
var 初始场景 = load("res://场景/初始.tscn")
var 初始场景脚本 = load("res://场景/初始.gd")
@onready var 输入名称: TextEdit = $"MarginContainer/HBoxContainer/角色栏/VBoxContainer/HBoxContainer/输入名称"
@onready var 输入姓氏: TextEdit = $"MarginContainer/HBoxContainer/角色栏/VBoxContainer/HBoxContainer/输入姓氏"
@onready var 西方: Button = $"MarginContainer/HBoxContainer/模式选择页/VBoxContainer/名称和姓氏/西方"
@onready var 中方: Button = $"MarginContainer/HBoxContainer/模式选择页/VBoxContainer/名称和姓氏/中方"
@onready var 新名称: RichTextLabel = $"MarginContainer/HBoxContainer/模式选择页/VBoxContainer/HBoxContainer2/新名称"
@onready var 新姓氏: RichTextLabel = $"MarginContainer/HBoxContainer/模式选择页/VBoxContainer/HBoxContainer2/新姓氏"
@onready var 属性文本框: RichTextLabel = $"MarginContainer/HBoxContainer/角色栏/VBoxContainer/属性文本框"
@onready var 你的身份: Label = $"MarginContainer/HBoxContainer/模式选择页/VBoxContainer/你的身份"

var 随机flag = Player.临时flag判断
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	生成按钮(游戏难度按钮组,Player.设置_游戏难度,游戏难度选择,[])
	更新名字()
	if 随机flag == false:
		_on_全部随机_pressed()
	else:
		更新角色框文本()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func 生成按钮(按钮父级,按钮名称组,发送信号函数名,判断已解锁组:Array):
	var 未解锁按钮组 = []
	for i in 按钮名称组.size():
		var 按钮组 = 按钮父级.get_child(0).button_group
		var 当前按钮 = 按钮父级.get_child(i) 
		当前按钮.text = 按钮名称组[i]
		当前按钮.name = 按钮名称组[i]
		当前按钮.custom_minimum_size.x = 100
		当前按钮.custom_minimum_size.y = 53
		当前按钮.toggle_mode = true
		if i > 0:
			当前按钮.button_group= 按钮组
			当前按钮.connect("pressed",发送信号函数名)
		if 判断已解锁组.size() > 0  and 当前按钮.name not in 判断已解锁组:
			当前按钮.disabled = true
			当前按钮.text += "[锁]"
			未解锁按钮组.push_back(按钮父级.get_child(i))
		if 按钮父级.get_children().size() < 按钮名称组.size():
			按钮父级.add_child(Button.new())
	for i in 未解锁按钮组.size():   #让未解锁的按钮节点挪到解锁按钮节点后面
			按钮父级.move_child(未解锁按钮组[i],int(按钮名称组.size()))
	pass
func 游戏难度选择():
	var 游戏难度 = 游戏难度按钮.button_group.get_pressed_button().name
	match 游戏难度:
		"简单":
			print("游戏为简单模式")
			Player.初始全局设置.游戏难度 = 0
			pass
		"普通":
			print("游戏为普通模式")
			Player.初始全局设置.游戏难度 = 1
			pass
		"困难":
			print("游戏为困难模式")
			Player.初始全局设置.游戏难度 = 2
			pass
	游戏难度注释.text = "游戏为"+ 游戏难度 + "模式。"
	pass


func _on_进入游戏_pressed() -> void:
	Player.临时flag判断 = false
	ChangeScene.场景改变("res://场景/主界面.tscn")
	pass # Replace with function body.


func _on_自定义_pressed() -> void:
	ChangeScene.场景改变("res://场景/初始.tscn")
	pass # Replace with function body.


func _on_全部随机_pressed() -> void:
	Player.主角.性别 = randi()%Player.属性_性别.size()
	Player.主角.性向 = randi()%Player.属性_性向.size()
	Player.主角.年龄 = randi_range(0,60)
	Player.主角.信仰 = randi()%Player.属性_信仰.size()
	Player.主角.种族 = randi()%Player.属性_已解锁种族.size()
	Player.主角.身份 = randi()%Player.属性_已解锁身份.size()
	Player.主角.出身 = randi()%Player.属性_已解锁出身.size()
	Player.主角.发色 = randi()%Player.属性_发色.size()
	Player.主角.肤色 = randi()%Player.属性_肤色.size()
	Player.主角.瞳色 = randi()%Player.属性_瞳色.size()
	Player.主角.身材 = randi()%Player.属性_身材.size()
	Player.主角.特质_性怪癖 = []
	Player.主角.特质_性能力 = []
	Player.主角.特质_症状 = []
	概率判断并随机(Player.特质_性怪癖,Player.主角.特质_性怪癖)
	概率判断并随机(Player.特质_性能力,Player.主角.特质_性能力)
	概率判断并随机(Player.特质_症状,Player.主角.特质_症状)
	随机主角名称()
	Player.主角.父 = randi_range(0,2) 
	Player.主角.母 = randi_range(0,2-Player.主角.父) 
	Player.主角.兄弟 = randi_range(0,3) 
	Player.主角.姐妹 = randi_range(0,3) 
	更新角色框文本()
	pass # Replace with function body.

func 概率判断并随机(属性组:Array,属性值:Array):
	var 概率 = randf()
	var 次数
	var 数组 = []
	属性值.clear()
	if 概率 < 0.1:
		次数 = randi_range(0,属性组.size())
	elif 概率 < 0.9:
		@warning_ignore("integer_division")
		次数 = randi_range(0,int(属性组.size()/4))
	else :
		@warning_ignore("integer_division")
		次数 = randi_range(int(属性组.size()/4),int(属性组.size()/3))
	var 随机组 = []
	随机组.assign(属性组)
	随机组.shuffle()
	数组.assign(随机组.slice(0,次数)) 
	for i in 数组.size():
		var 索引 = 属性组.find(数组[i])
		属性值.append(int(索引))

func _on_输入名称_text_changed() -> void:
	Player.主角.名称 = 输入名称.text
	更新名字()
	pass # Replace with function body.


func _on_输入姓氏_text_changed() -> void:
	Player.主角.姓氏 = 输入姓氏.text
	更新名字()
	pass # Replace with function body.

func 更新名字():
	输入名称.text = Player.主角.名称
	输入姓氏.text = Player.主角.姓氏
	西方.text = Player.主角.名称+"·"+Player.主角.姓氏
	中方.text = Player.主角.姓氏+Player.主角.名称

func 全名选择() -> void:
	var 名字 = 西方.button_group.get_pressed_button().text
	Player.主角.全名 = 名字
	名字姓氏确定()
	pass # Replace with function body.

func 随机主角名称():
	var 风格 = ["中国风","欧洲风","日本风"]
	var 参数 = 风格.pick_random()
	var 性别 = Player.主角.性别
	var 名称库 = Player.名称库
	var 随机名称 = ""
	var 随机姓氏 = 名称库[参数+"-姓氏"][randi()%名称库[参数+"-姓氏"].size()]
	if 参数 == "欧洲风" or 参数 == "日本风":
		if 性别 == 0:
			随机名称 = 名称库[参数+"-名字男"][randi()%名称库[参数+"-名字男"].size()]
		elif 性别 == 1:
			随机名称 = 名称库[参数+"-名字女"][randi()%名称库[参数+"-名字女"].size()]
		else:
			if randi_range(0,1) == 0:
				随机名称 = 名称库[参数+"-名字男"][randi()%名称库[参数+"-名字男"].size()]
			else:
				随机名称 = 名称库[参数+"-名字女"][randi()%名称库[参数+"-名字女"].size()]
	if 参数 =="中国风":
		if 性别 == 0:
			if randi_range(0,1) == 0:
				随机名称 = 名称库["中国风-多字男"][randi()%名称库["中国风-多字男"].size()]
			elif randi_range(0,1) == 0:
				随机名称 = 名称库["中国风-单字男"][randi()%名称库["中国风-单字男"].size()]+名称库["中国风-单字男"][randi()%名称库["中国风-单字男"].size()]
			else:
				随机名称 = 名称库["中国风-单字男"][randi()%名称库["中国风-单字男"].size()]
		elif 性别 == 1:
			if randi_range(0,1) == 0:
				随机名称 = 名称库["中国风-多字女"][randi()%名称库["中国风-多字女"].size()]
			elif randi_range(0,1) == 0:
				随机名称 = 名称库["中国风-单字女"][randi()%名称库["中国风-单字女"].size()]+名称库["中国风-单字女"][randi()%名称库["中国风-单字女"].size()]
			else:
				随机名称 = 名称库["中国风-单字女"][randi()%名称库["中国风-单字女"].size()]
		else:
			if randi_range(0,1) == 0:
				if randi_range(0,1) == 0:
					随机名称 = 名称库["中国风-多字男"][randi()%名称库["中国风-多字男"].size()]
				elif randi_range(0,1) == 0:
					随机名称 = 名称库["中国风-单字男"][randi()%名称库["中国风-单字男"].size()]+名称库["中国风-单字男"][randi()%名称库["中国风-单字男"].size()]
				else:
					随机名称 = 名称库["中国风-单字男"][randi()%名称库["中国风-单字男"].size()]
			else:
				if randi_range(0,1) == 0:
					随机名称 = 名称库["中国风-多字女"][randi()%名称库["中国风-多字女"].size()]
				elif randi_range(0,1) == 0:
					随机名称 = 名称库["中国风-单字女"][randi()%名称库["中国风-单字女"].size()]+名称库["中国风-单字女"][randi()%名称库["中国风-单字女"].size()]
				else:
					随机名称 = 名称库["中国风-单字女"][randi()%名称库["中国风-单字女"].size()]
	Player.主角.名称 = 随机名称
	Player.主角.姓氏 = 随机姓氏
	更新名字()
	pass

func 名字姓氏确定():
	var 男名称名字库 = Player.名称库["中国风-单字男"]+Player.名称库["中国风-多字男"]+Player.名称库["日本风-名字男"]+Player.名称库["欧洲风-名字男"]
	var 女名称名字库 = Player.名称库["中国风-单字女"]+Player.名称库["中国风-多字女"]+Player.名称库["日本风-名字女"]+Player.名称库["欧洲风-名字女"]
	var 姓氏名字库 = Player.名称库["中国风-姓氏"]+Player.名称库["欧洲风-姓氏"]+Player.名称库["日本风-姓氏"]
	if Player.主角.名称 not in 男名称名字库+女名称名字库:
		$"MarginContainer/HBoxContainer/模式选择页/VBoxContainer/HBoxContainer2".visible = true 
		新名称.parse_bbcode("[center][color=MEDIUM_TURQUOISE]"+Player.主角.名称+"[/color]"+"是新的名称呢。")
	else:
		新名称.parse_bbcode("")
	if Player.主角.姓氏 not in 姓氏名字库:
		$"MarginContainer/HBoxContainer/模式选择页/VBoxContainer/HBoxContainer2".visible = true 
		新姓氏.parse_bbcode("[center][color=MEDIUM_TURQUOISE]"+Player.主角.姓氏+"[/color]"+"是新的姓氏呢。")
	else:
		新姓氏.parse_bbcode("")
	pass # Replace with function body.

func 更新角色框文本():
	你的身份.text = "你的身份是："+Player.属性_身份[Player.主角.身份]+"。"
	属性文本框.parse_bbcode("[center][font_size=20][color=TURQUOISE]基本属性[/color][/font_size][/center]"+"\n")
	属性文本框.add_text("性别："+ Player.属性_性别[Player.主角.性别]+"\t\t\t\t"+"性向："+ Player.属性_性向[Player.主角.性向]+"\n")
	属性文本框.add_text("年龄："+ Player.年龄段判断(Player.主角.年龄)+"("+str(Player.主角.年龄)+")\n")
	属性文本框.add_text("信仰："+ Player.属性_信仰[Player.主角.信仰]+"("+Player.属性["信仰"][Player.属性_信仰[Player.主角.信仰]]["注释"]+")\n")
	属性文本框.add_text("种族："+ Player.属性_种族[Player.主角.种族]+"\n")
	属性文本框.add_text("出身："+ Player.属性_出身[Player.主角.出身]+"\t\t"+"身份："+ Player.属性_身份[Player.主角.身份]+"\n")
	属性文本框.append_text("[center][font_size=20][color=TURQUOISE]外貌[/color][/font_size][/center]"+"\n")
	属性文本框.add_text("发色："+ Player.属性_发色[Player.主角.发色]+"\t\t\t\t"+"瞳色："+ Player.属性_瞳色[Player.主角.瞳色]+"\n")
	属性文本框.add_text("肤色："+ Player.属性_肤色[Player.主角.肤色]+"\n")
	属性文本框.add_text("身材："+ Player.属性_身材[Player.主角.身材]+"\n")
	属性文本框.append_text("[center][font_size=20][color=TURQUOISE]特质[/color][/font_size][/center]"+"\n")
	属性文本框.add_text("性怪癖："+ Player.特质由数字转换为文本(Player.主角.特质_性怪癖,Player.特质_性怪癖)+"\n")
	属性文本框.add_text("性能力："+ Player.特质由数字转换为文本(Player.主角.特质_性能力,Player.特质_性能力)+"\n")
	属性文本框.add_text("症状："+ Player.特质由数字转换为文本(Player.主角.特质_症状,Player.特质_症状)+"\n")
	属性文本框.append_text("[center][font_size=20][color=TURQUOISE]关系[/color][/font_size][/center]"+"\n")
	属性文本框.add_text("父亲："+ str(Player.主角.父)+"人\t\t\t\t"+ "母亲："+ str(Player.主角.母)+"人"+"\n")
	属性文本框.add_text("兄弟："+ str(Player.主角.兄弟)+"人\t\t\t\t"+ "姐妹："+ str(Player.主角.姐妹)+"人")

	pass
