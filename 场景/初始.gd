extends TextureRect

@onready var 基础属性文本框 = $"MarginContainer3/文本框/基础属性文本框"
@onready var 外貌文本框 = $"MarginContainer3/文本框/外貌文本框"
@onready var 其他属性文本框= $"MarginContainer3/文本框/其他属性文本框"
@onready var 特质文本框 = $"MarginContainer3/文本框/特质文本框"
@onready var 性别注释:Label = $"MarginContainer3/文本框/基础属性文本框/VBoxContainer/性别框/HBoxContainer/性别注释"
@onready var 输入主角名称:TextEdit = $"MarginContainer3/文本框/其他属性文本框/VBoxContainer/名称和姓氏框/HBoxContainer/输入主角名称"
@onready var 输入主角姓氏:TextEdit = $"MarginContainer3/文本框/其他属性文本框/VBoxContainer/名称和姓氏框/HBoxContainer/输入主角姓氏"
@onready var 新名称:RichTextLabel = $"MarginContainer3/文本框/其他属性文本框/VBoxContainer/名称和姓氏框/新名称和姓氏注释/新名称"
@onready var 新姓氏:RichTextLabel = $"MarginContainer3/文本框/其他属性文本框/VBoxContainer/名称和姓氏框/新名称和姓氏注释/新姓氏"
@onready var 主角年龄 =$"MarginContainer3/文本框/基础属性文本框/VBoxContainer/年龄框/年龄选择框/主角年龄"
@onready var 年龄注释 = $"MarginContainer3/文本框/基础属性文本框/VBoxContainer/年龄框/年龄选择框/年龄注释"
@onready var 信仰选择 = $"MarginContainer3/文本框/基础属性文本框/VBoxContainer/信仰框/HBoxContainer/信仰选择"
@onready var 信仰注释 = $"MarginContainer3/文本框/基础属性文本框/VBoxContainer/信仰框/HBoxContainer/信仰注释"
@onready var 种族组 = $"MarginContainer3/文本框/基础属性文本框/VBoxContainer/种族框/HBoxContainer/种族组"
@onready var 种族注释 = $"MarginContainer3/文本框/基础属性文本框/VBoxContainer/种族框/HBoxContainer/种族注释"
@onready var 性别水平框2 = $"MarginContainer3/文本框/基础属性文本框/VBoxContainer/性别框/HBoxContainer/HBoxContainer2"
@onready var 性别水平框: HBoxContainer = $"MarginContainer3/文本框/基础属性文本框/VBoxContainer/性别框/HBoxContainer/HBoxContainer2"
@onready var 发色按钮组 = $"MarginContainer3/文本框/外貌文本框/VBoxContainer/外貌颜色框/发色框/发色按钮组"
@onready var 发色注释 = $"MarginContainer3/文本框/外貌文本框/VBoxContainer/外貌颜色框/发色框/发色注释"
@onready var 瞳色按钮组 = $"MarginContainer3/文本框/外貌文本框/VBoxContainer/外貌颜色框/瞳色框/瞳色按钮组"
@onready var 瞳色注释 = $"MarginContainer3/文本框/外貌文本框/VBoxContainer/外貌颜色框/瞳色框/瞳色注释"
@onready var 肤色按钮组 = $"MarginContainer3/文本框/外貌文本框/VBoxContainer/外貌颜色框/肤色框/肤色按钮组"
@onready var 肤色注释 = $"MarginContainer3/文本框/外貌文本框/VBoxContainer/外貌颜色框/肤色框/肤色注释"
@onready var 身材按钮组 = $"MarginContainer3/文本框/外貌文本框/VBoxContainer/外貌颜色框/身材框/身材按钮组"
@onready var 身材注释 = $"MarginContainer3/文本框/外貌文本框/VBoxContainer/外貌颜色框/身材框/身材注释"
@onready var 性怪癖按钮集合: GridContainer = $"MarginContainer3/文本框/特质文本框/VBoxContainer/性怪癖/性怪癖按钮集合"
@onready var 性能力按钮集合: GridContainer = $"MarginContainer3/文本框/特质文本框/VBoxContainer/性能力/性能力按钮集合"
@onready var 症状按钮集合: GridContainer = $"MarginContainer3/文本框/特质文本框/VBoxContainer/症状/症状按钮集合"
@onready var 性怪癖注释: RichTextLabel = $"MarginContainer3/文本框/特质文本框/VBoxContainer/性怪癖注释"
@onready var 症状注释: RichTextLabel = $"MarginContainer3/文本框/特质文本框/VBoxContainer/症状注释"
@onready var 性能力注释: RichTextLabel = $"MarginContainer3/文本框/特质文本框/VBoxContainer/性能力注释"
@onready var 父亲数: SpinBox = $"MarginContainer3/文本框/其他属性文本框/VBoxContainer/关系框/父母/父/父亲数"
@onready var 母亲数: SpinBox = $"MarginContainer3/文本框/其他属性文本框/VBoxContainer/关系框/父母/母/母亲数"
@onready var 兄弟数: SpinBox = $"MarginContainer3/文本框/其他属性文本框/VBoxContainer/关系框/兄弟姐妹/兄弟/兄弟数"
@onready var 姐妹数: SpinBox = $"MarginContainer3/文本框/其他属性文本框/VBoxContainer/关系框/兄弟姐妹/姐妹/姐妹数"
@onready var 性向按钮组: GridContainer = $"MarginContainer3/文本框/基础属性文本框/VBoxContainer/性向框/性向按钮组"
@onready var 性向注释: RichTextLabel = $"MarginContainer3/文本框/基础属性文本框/VBoxContainer/性向框/性向注释"
@onready var 出身按钮组: GridContainer = $"MarginContainer3/文本框/基础属性文本框/VBoxContainer/出身框/出身按钮组"
@onready var 出身注释: RichTextLabel = $"MarginContainer3/文本框/基础属性文本框/VBoxContainer/出身框/出身注释"
@onready var 身份按钮组: GridContainer = $"MarginContainer3/文本框/基础属性文本框/VBoxContainer/身份框/身份按钮组"
@onready var 身份注释: RichTextLabel = $"MarginContainer3/文本框/基础属性文本框/VBoxContainer/身份框/身份注释"

signal 随机
#获取节点(变换节点结构 不影响)
#	get_tree().root.find_child("神祗", true, false).disabled = false
#	get_tree().root.find_child("人类", true, false).disabled = true
# Called when the node enters the scene tree for the first time.
#随机数
#randi()%数组.size() = randi_range(0,数组.size()-1) randi_range(a,b） 含端点

func _ready():
	var 主界面 = Image.load_from_file("picture/bigmap/1.png")
	var 显示图 = ImageTexture.create_from_image(主界面)
	文本框切换()
	基础属性文本框.show()
	创建界面按钮()
	名字更新()
	读取主角属性()
	$".".texture = 显示图
	pass # Replace with function body.
func 读取主角属性():
	输入主角名称.text = Player.主角.名称
	输入主角姓氏.text = Player.主角.姓氏
	主角年龄.value = Player.主角.年龄
	父亲数.value = Player.主角.父
	母亲数.value = Player.主角.母
	兄弟数.value = Player.主角.兄弟
	姐妹数.value = Player.主角.姐妹
	刷新特质注释文本()
	刷新属性注释文本()

func 刷新属性注释文本():
	_on_性别选择_pressed() 
	_on_信仰选择_pressed()
	_on_种族选择_pressed()
	_on_性向选择_pressed()
	_on_出身选择_pressed()
	_on_身份选择_pressed()
	_on_发色选择_pressed()
	_on_瞳色选择_pressed()
	_on_肤色选择_pressed()
	_on_身材选择_pressed()
#func 判断特质是否存在(特质组,特质总组):
#	for i in 特质组:
#		if 特质组[i] in 特质总组:
#			按钮父级.get_child(特质总组.find(特质组[i])).button_pressed = true
func 创建界面按钮():
	创建单选按钮(性别水平框,Player.属性_性别,_on_性别选择_pressed,[],Player.主角.性别)
	创建单选按钮(信仰选择,Player.属性_信仰,_on_信仰选择_pressed,[],Player.主角.信仰)
	创建单选按钮(种族组,Player.属性_种族,_on_种族选择_pressed,Player.属性_已解锁种族,Player.主角.种族)
	创建单选按钮(发色按钮组,Player.属性_发色,_on_发色选择_pressed,[],Player.主角.发色)
	创建单选按钮(瞳色按钮组,Player.属性_瞳色,_on_瞳色选择_pressed,[],Player.主角.瞳色)
	创建单选按钮(肤色按钮组,Player.属性_肤色,_on_肤色选择_pressed,[],Player.主角.肤色)
	创建单选按钮(身材按钮组,Player.属性_身材,_on_身材选择_pressed,[],Player.主角.身材)
	创建多选按钮(性怪癖按钮集合,"特质_性怪癖",Player.特质_性怪癖,_on_性怪癖选择_toggled,[])
	创建多选按钮(性能力按钮集合,"特质_性能力",Player.特质_性能力,_on_性能力选择_toggled,[])
	创建多选按钮(症状按钮集合,"特质_症状",Player.特质_症状,_on_症状选择_toggled,[])
	创建单选按钮(性向按钮组,Player.属性_性向,_on_性向选择_pressed,[],Player.主角.性向)
	创建单选按钮(身份按钮组,Player.属性_身份,_on_身份选择_pressed,Player.属性_已解锁身份,Player.主角.身份)
	创建单选按钮(出身按钮组,Player.属性_出身,_on_出身选择_pressed,Player.属性_已解锁出身,Player.主角.出身)

func 创建单选按钮(按钮父级,按钮名称组,发送信号函数名,判断已解锁组:Array,变量):
	var 未解锁按钮组 = []
	for i in 按钮名称组.size():
		var 按钮组 = 按钮父级.get_child(0).button_group
		var 当前按钮 = 按钮父级.get_child(i) 
		当前按钮.text = 按钮名称组[i]
		当前按钮.name = 按钮名称组[i]
		当前按钮.custom_minimum_size.x = 100
		当前按钮.custom_minimum_size.y = 53
		当前按钮.toggle_mode = true
		if i == 变量:
			当前按钮.button_pressed = true
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

func 创建多选按钮(按钮父级,按钮组名:String,按钮名称组,发送信号函数名,判断已解锁组:Array):
	var 变量 
	var 注释
	var 未解锁按钮组 = []
	match  按钮组名:
		"特质_性怪癖":
			变量 = Player.主角.特质_性怪癖
			注释 = 性怪癖注释
		"特质_性能力":
			变量 = Player.主角.特质_性能力
			注释 =性能力注释
		"特质_症状":
			变量 = Player.主角.特质_症状
			注释 =症状注释
	for i in 按钮名称组.size():
		var 当前按钮 = 按钮父级.get_child(i) 
		当前按钮.text = 按钮名称组[i]
		当前按钮.name = 按钮名称组[i]
		当前按钮.custom_minimum_size.x = 110
		当前按钮.custom_minimum_size.y = 40
#		当前按钮.theme_override_font_sizes = 20
		当前按钮.theme = load("res://ui主题/初始选择ui-20px.tres")
		当前按钮.toggle_mode = true
		当前按钮.tooltip_text = Player.特质[按钮组名][按钮名称组[i]]["注释"]
		if i in 变量:
			当前按钮.button_pressed = true
			注释.parse_bbcode("[center]你具有[color=MEDIUM_TURQUOISE]"+str(特质由数字转换为文本(变量,按钮名称组))+"[/color]。")
		当前按钮.connect("pressed",发送信号函数名.bind(当前按钮))
		if 判断已解锁组.size() > 0  and 当前按钮.name not in 判断已解锁组:
			当前按钮.disabled = true
			当前按钮.text += "[锁]"
			未解锁按钮组.push_back(按钮父级.get_child(i))
		if 按钮父级.get_children().size() < 按钮名称组.size():
			按钮父级.add_child(Button.new())
	for i in 未解锁按钮组.size():   #让未解锁的按钮节点挪到解锁按钮节点后面
			按钮父级.move_child(未解锁按钮组[i],int(按钮名称组.size()))

func 特质文本排序(特质组:Array):
	var 文本 =""
	for i in 特质组.size():
		if i == 特质组.size()-1:
			文本 += 特质组[i]
		else:
			文本 += 特质组[i]+"、"
	return 文本
func 特质由数字转换为文本(特质组:Array,特质名称组:Array):
	var 文本 =""
	for i in 特质组.size():
		if i == 特质组.size()-1:
			文本 += 特质名称组[特质组[i]]
		else:
			文本 += 特质名称组[特质组[i]]+"、"
	return 文本

var 随机风格 = 0
func _on_随机主角名称风格选择_item_selected(index):
	随机风格 = $"MarginContainer3/文本框/其他属性文本框/VBoxContainer/名称和姓氏框/HBoxContainer/随机主角名称风格选择".get_item_id(index)
	_on_随机主角名称_pressed()
	pass # Replace with function body.
	
func _on_随机主角名称_pressed():
	if 随机风格 == 2:
		随机主角名称("欧洲风",Player.主角.性别)
	elif 随机风格 == 1:
		随机主角名称("日本风",Player.主角.性别)
	elif 随机风格 == 0:
		随机主角名称("中国风",Player.主角.性别)
	else :
		pass # Replace with function body.
func 随机主角名称(参数:String,性别:int):
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
	输入主角名称.text = 随机名称
	Player.主角.名称 = 随机名称
	输入主角姓氏.text = 随机姓氏
	Player.主角.姓氏 = 随机姓氏
	名字更新()
	pass

func 全部随机():
	_on_基础页随机_pressed()
	_on_外貌页随机_pressed()
	_on_特质页随机_pressed()
	_on_其他属性页随机_pressed()
	pass # Replace with function body.

func _on_基础页随机_pressed() -> void:
	$"MarginContainer3/文本框/基础属性文本框/VBoxContainer/性别框/HBoxContainer/HBoxContainer2".get_child(randi_range(0,3)).button_pressed = true 
	_on_性别选择_pressed()
	主角年龄.value = randi_range(1,50)
	信仰选择.get_child(randi()%Player.属性_信仰.size()).button_pressed = true 
	_on_信仰选择_pressed()
	种族组.get_child(randi()%Player.属性_已解锁种族.size()).button_pressed = true 
	_on_种族选择_pressed()
	性向按钮组.get_child(randi()%Player.属性_性向.size()).button_pressed = true 
	_on_性向选择_pressed()
	出身按钮组.get_child(randi()%Player.属性_已解锁出身.size()).button_pressed = true 
	_on_出身选择_pressed()
	身份按钮组.get_child(randi()%Player.属性_已解锁身份.size()).button_pressed = true 
	_on_身份选择_pressed()
	pass # Replace with function body.

func _on_外貌页随机_pressed() -> void:
	发色按钮组.get_child(randi()%Player.属性_发色.size()).button_pressed = true 
	_on_发色选择_pressed()
	瞳色按钮组.get_child(randi()%Player.属性_瞳色.size()).button_pressed = true 
	_on_瞳色选择_pressed()
	肤色按钮组.get_child(randi()%Player.属性_肤色.size()).button_pressed = true 
	_on_肤色选择_pressed()
	身材按钮组.get_child(randi()%Player.属性_身材.size()).button_pressed = true 
	_on_身材选择_pressed()
	pass # Replace with function body.


func _on_特质页随机_pressed() -> void:
	随机特质按钮(性怪癖按钮集合,Player.特质_性怪癖,"性怪癖")
	随机特质按钮(性能力按钮集合,Player.特质_性能力,"性能力")
	随机特质按钮(症状按钮集合,Player.特质_症状,"症状")
	刷新特质注释文本()
	pass # Replace with function body.


func _on_其他属性页随机_pressed() -> void:
	父亲数.value = randi_range(0,int(父亲数.max_value))
	母亲数.value = randi_range(0,int(母亲数.max_value))
	兄弟数.value = randi_range(0,int(兄弟数.max_value))
	姐妹数.value = randi_range(0,int(姐妹数.max_value))
	随机风格 = randi_range(0,2)
	$"MarginContainer3/文本框/其他属性文本框/VBoxContainer/名称和姓氏框/HBoxContainer/随机主角名称风格选择".select(随机风格)
	随机主角名称( ["中国风","日本风","欧洲风"][随机风格],Player.主角.性别)
	pass # Replace with function body.


func 随机特质按钮(按钮父级,特质组:Array,参数):
	var 概率 = randf()
	var 次数
	if 概率 < 0.2:
		次数 = randi_range(0,特质组.size())
	elif 概率 < 0.9:
		@warning_ignore("integer_division")
		次数 = randi_range(0,int(特质组.size()/2))
	else :
		@warning_ignore("integer_division")
		次数 = randi_range(int(特质组.size()/2),特质组.size())
	var 当前按钮
	for i in 特质组.size():
		按钮父级.get_child(i).button_pressed = false 
		当前按钮 = 按钮父级.get_child(i)
	match 参数 :
		"性怪癖":
			Player.主角.特质_性怪癖 = []
		"性能力":
			Player.主角.特质_性能力 = []
		"症状":
			Player.主角.特质_症状 = []
	for i in 次数:
		当前按钮 = 按钮父级.get_child(randi()%特质组.size())
		if 当前按钮.button_pressed == true:
			当前按钮.button_pressed = false 
		else:
			当前按钮.button_pressed = true 
		match 参数 :
			"性怪癖":
				_on_性怪癖选择_toggled(当前按钮)
			"性能力":
				_on_性能力选择_toggled(当前按钮)
			"症状":
				_on_症状选择_toggled(当前按钮)


func 刷新特质注释文本():
	Player.主角.特质_性怪癖.sort()
	Player.主角.特质_性能力.sort()
	Player.主角.特质_症状.sort()
	if Player.主角.特质_性怪癖.size() > 0:
		性怪癖注释.parse_bbcode("[center]你具有[color=MEDIUM_TURQUOISE]"+str(特质由数字转换为文本(Player.主角.特质_性怪癖,Player.特质_性怪癖))+"[/color]的特质。")
	else :
		性怪癖注释.parse_bbcode("")
	if Player.主角.特质_性能力.size() > 0:
		性能力注释.parse_bbcode("[center]你具有[color=MEDIUM_TURQUOISE]"+str(特质由数字转换为文本(Player.主角.特质_性能力,Player.特质_性能力))+"[/color]的特质。")
	else :
		性能力注释.parse_bbcode("")
	if Player.主角.特质_症状.size() > 0:
		症状注释.parse_bbcode("[center]你具有[color=MEDIUM_TURQUOISE]"+str(特质由数字转换为文本(Player.主角.特质_症状,Player.特质_症状))+"[/color]的特质。")
	else :
		症状注释.parse_bbcode("")

func 文本框切换():
	基础属性文本框.hide()
	外貌文本框.hide()
	特质文本框.hide()
	其他属性文本框.hide()

func _on_基础属性_pressed():
	文本框切换()
	基础属性文本框.show()
	pass # Replace with function body.

func _on_外貌_pressed():
	文本框切换()
	外貌文本框.show()
	pass # Replace with function body.

func _on_其他属性_pressed():
	文本框切换()
	其他属性文本框.show()
	pass # Replace with function body.

func _on_特质_pressed():
	文本框切换()
	特质文本框.show()
	pass # Replace with function body.

func _on_确定_pressed():
	$"MarginContainer3/选择页/VBoxContainer3/确定".tooltip_text="进入新游戏"
	Player.临时flag判断 = true
	ChangeScene.场景改变("res://场景/模式选择.tscn")
#	$"警告".popup_centered()
	pass # Replace with function body.

func _on_性别选择_pressed():
	var 主角性别 = $"MarginContainer3/文本框/基础属性文本框/VBoxContainer/性别框/HBoxContainer/HBoxContainer2/男性".button_group.get_pressed_button().name
	match 主角性别:
		"男性":
			Player.主角.性别 = 0
		"女性":
			Player.主角.性别 = 1
		"双性":
			Player.主角.性别 = 2
		"扶她":
			Player.主角.性别 = 3
	性别注释.text = Player.属性["性别"][Player.属性_性别[Player.主角.性别]]["注释"]
	pass # Replace with function body.


func _on_输入主角名称_text_changed():
	Player.主角.名称 = 输入主角名称.text
	名字更新()

func _on_输入主角姓氏_text_changed():
	Player.主角.姓氏 = 输入主角姓氏.text
	名字更新()

func 名字更新():
	$"MarginContainer3/文本框/其他属性文本框/VBoxContainer/名称和姓氏框/名字形式选择/西方".text=Player.主角.名称+"·"+Player.主角.姓氏
	$"MarginContainer3/文本框/其他属性文本框/VBoxContainer/名称和姓氏框/名字形式选择/中方".text=Player.主角.姓氏+Player.主角.名称

func 名字姓氏确定():
	var 主角全名 = $"MarginContainer3/文本框/其他属性文本框/VBoxContainer/名称和姓氏框/名字形式选择/西方".button_group.get_pressed_button().text
	Player.主角.全名 = 主角全名
	var 男名称名字库 = Player.名称库["中国风-单字男"]+Player.名称库["中国风-多字男"]+Player.名称库["日本风-名字男"]+Player.名称库["欧洲风-名字男"]
	var 女名称名字库 = Player.名称库["中国风-单字女"]+Player.名称库["中国风-多字女"]+Player.名称库["日本风-名字女"]+Player.名称库["欧洲风-名字女"]
	var 姓氏名字库 = Player.名称库["中国风-姓氏"]+Player.名称库["欧洲风-姓氏"]+Player.名称库["日本风-姓氏"]
	if Player.主角.名称 not in 男名称名字库+女名称名字库:
		新名称.parse_bbcode("[color=MEDIUM_TURQUOISE]"+Player.主角.名称+"[/color]"+"是新的名称呢。")
	else:
		新名称.parse_bbcode("")
	if Player.主角.姓氏 not in 姓氏名字库:
		新姓氏.parse_bbcode("[color=MEDIUM_TURQUOISE]"+Player.主角.姓氏+"[/color]"+"是新的姓氏呢。")
	else:
		新姓氏.parse_bbcode("")
	pass # Replace with function body.


func _on_警告_confirmed():
	$"警告".hide()
	pass # Replace with function body.

func _on_主角年龄_value_changed(value):
	Player.主角.年龄 = 主角年龄.value
	年龄注释.text =  Player.属性["年龄段"][Player.年龄段判断(Player.主角.年龄)]["注释"]
	pass # Replace with function body.



func _on_信仰选择_pressed():
	var 主角信仰 = 信仰选择.get_child(0).button_group.get_pressed_button().text
	for i in Player.属性_信仰.size():
		var 文本 = Player.属性_信仰[i]
		if 主角信仰 == str(文本):
			Player.主角.信仰 = i
	信仰注释.text = Player.属性["信仰"][Player.属性_信仰[Player.主角.信仰]]["注释"]
	pass # Replace with function body.


func _on_种族选择_pressed():
	var 种族名 = 种族组.get_child(0).button_group.get_pressed_button().text
	for i in Player.属性_种族.size():
		var 文本 = Player.属性_种族[i]
		if 种族名 == str(文本):
			Player.主角.种族 = i
	种族注释.text = Player.属性["种族"][Player.属性_种族[Player.主角.种族]]["注释"]
	pass # Replace with function body.

func _on_发色选择_pressed():
	var 发色名 = 发色按钮组.get_child(0).button_group.get_pressed_button().text
	for i in Player.属性_发色.size():
		var 文本 = Player.属性_发色[i]
		if 发色名 == str(文本):
			Player.主角.发色 = i
	var 注释 = Player.属性["发色"][Player.属性_发色[Player.主角.发色]]["注释"]
	if 注释 == "" or 注释 == null:
		发色注释.parse_bbcode("[center]你的头发颜色为[color=LIGHT_SEA_GREEN]" + Player.属性_发色[Player.主角.发色]+"[/color]。") 
	else:
		发色注释.parse_bbcode("[center]"+注释) 

func _on_瞳色选择_pressed():
	var 瞳色名 = 瞳色按钮组.get_child(0).button_group.get_pressed_button().text
	for i in Player.属性_瞳色.size():
		var 文本 = Player.属性_瞳色[i]
		if 瞳色名 == str(文本):
			Player.主角.瞳色 = i
	var 注释 = Player.属性["瞳色"][Player.属性_瞳色[Player.主角.瞳色]]["注释"]
	if 注释 == "" or 注释 == null:
		瞳色注释.parse_bbcode("[center]你的眼睛颜色为[color=LIGHT_SEA_GREEN]" + Player.属性_瞳色[Player.主角.瞳色]+"[/color]。") 
	else:
		瞳色注释.parse_bbcode("[center]"+注释) 

func _on_肤色选择_pressed():
	var 肤色名 = 肤色按钮组.get_child(0).button_group.get_pressed_button().text
	for i in Player.属性_肤色.size():
		var 文本 = Player.属性_肤色[i]
		if 肤色名 == str(文本):
			Player.主角.肤色 = i
	var 注释 = Player.属性["肤色"][Player.属性_肤色[Player.主角.肤色]]["注释"]
	if 注释 == "" or 注释 == null:
		肤色注释.parse_bbcode("[center]你的皮肤呈现为[color=LIGHT_SEA_GREEN]" + Player.属性_肤色[Player.主角.肤色]+"[/color]。") 
	else:
		肤色注释.parse_bbcode("[center]"+注释) 
	pass # Replace with function body.


func _on_身材选择_pressed():
	var 身材名 = 身材按钮组.get_child(0).button_group.get_pressed_button().text
	for i in Player.属性_身材.size():
		var 文本 = Player.属性_身材[i]
		if 身材名 == str(文本):
			Player.主角.身材 = i
	var 注释 = Player.属性["身材"][Player.属性_身材[Player.主角.身材]]["注释"]
	if 注释 == "" or 注释 == null:
		身材注释.parse_bbcode("[center]你身材[color=LIGHT_SEA_GREEN]" + Player.属性_身材[Player.主角.身材]+"[/color]。") 
	else:
		身材注释.parse_bbcode("[center]"+注释) 
	pass # Replace with function body.


func _on_性怪癖选择_toggled(当前按钮) -> void:
	var 性怪癖名 = 当前按钮.text
	for i in Player.特质_性怪癖.size():
		var 文本 = Player.特质_性怪癖[i]
		if 性怪癖名 == str(文本):
			if 当前按钮.button_pressed == true:
				Player.主角.特质_性怪癖.push_back(Player.特质["特质_性怪癖"][Player.特质_性怪癖[i]]["id"])
			else:
				var 索引 = Player.主角.特质_性怪癖.find(Player.特质["特质_性怪癖"][Player.特质_性怪癖[i]]["id"])
				Player.主角.特质_性怪癖.remove_at(索引)
	刷新特质注释文本()
	pass # Replace with function body.

func _on_性能力选择_toggled(当前按钮) -> void:
	var 名称 = 当前按钮.text
	for i in Player.特质_性能力.size():
		var 文本 = Player.特质_性能力[i]
		if 名称 == str(文本):
			if 当前按钮.button_pressed == true:
				Player.主角.特质_性能力.push_back(Player.特质["特质_性能力"][Player.特质_性能力[i]]["id"])
			else:
				var 索引 = Player.主角.特质_性能力.find(Player.特质["特质_性能力"][Player.特质_性能力[i]]["id"])
				Player.主角.特质_性能力.remove_at(索引)
	刷新特质注释文本()
	pass # Replace with function body.
func _on_症状选择_toggled(当前按钮) -> void:
	var 名称 = 当前按钮.text
	for i in Player.特质_症状.size():
		var 文本 = Player.特质_症状[i]
		if 名称 == str(文本):
			if 当前按钮.button_pressed == true:
				Player.主角.特质_症状.push_back(Player.特质["特质_症状"][Player.特质_症状[i]]["id"])
			else:
				var 索引 = Player.主角.特质_症状.find(Player.特质["特质_症状"][Player.特质_症状[i]]["id"])
				Player.主角.特质_症状.remove_at(索引)
	刷新特质注释文本()
	pass # Replace with function body.


func _on_性怪癖清除_pressed() -> void:
	for i in Player.特质_性怪癖.size():
		性怪癖按钮集合.get_child(i).button_pressed = false
	Player.主角.特质_性怪癖 = []
	刷新特质注释文本()
	pass # Replace with function body.


func _on_性能力清除_pressed() -> void:
	for i in Player.特质_性能力.size():
		性能力按钮集合.get_child(i).button_pressed = false
	Player.主角.特质_性能力 = []
	刷新特质注释文本()
	pass # Replace with function body.


func _on_症状清除_pressed() -> void:
	for i in Player.特质_症状.size():
		症状按钮集合.get_child(i).button_pressed = false
	Player.主角.特质_症状 = []
	刷新特质注释文本()
	pass # Replace with function body.




func _on_父亲数_value_changed(value: float) -> void:
	Player.主角.父 = 父亲数.value
	母亲数.max_value = 2 - 父亲数.value
	pass # Replace with function body.


func _on_母亲数_value_changed(value: float) -> void:
	Player.主角.母 = 母亲数.value
	父亲数.max_value = 2 - 母亲数.value
	pass # Replace with function body.


func _on_兄弟数_value_changed(value: float) -> void:
	Player.主角.兄弟 = 兄弟数.value
	pass # Replace with function body.


func _on_姐妹数_value_changed(value: float) -> void:
	Player.主角.姐妹 = 姐妹数.value
	pass # Replace with function body.


func _on_性向选择_pressed() -> void:
	var 性向名 = 性向按钮组.get_child(0).button_group.get_pressed_button().text
	for i in Player.属性_性向.size():
		var 文本 = Player.属性_性向[i]
		if 性向名 == str(文本):
			Player.主角.性向 = i
	var 注释 = Player.属性["性向"][Player.属性_性向[Player.主角.性向]]["注释"]
	if 注释 == "" or 注释 == null:
		性向注释.parse_bbcode("[center]你的性向为[color=LIGHT_SEA_GREEN]" + Player.属性_性向[Player.主角.性向]+"[/color]。") 
	else:
		性向注释.parse_bbcode("[center]"+注释) 
	pass # Replace with function body.


func _on_出身选择_pressed() -> void:
	var 出身名 = 出身按钮组.get_child(0).button_group.get_pressed_button().text
	for i in Player.属性_出身.size():
		var 文本 = Player.属性_出身[i]
		if 出身名 == str(文本):
			Player.主角.出身 = i
	var 注释 = Player.属性["出身"][Player.属性_出身[Player.主角.出身]]["注释"]
	if 注释 == "" or 注释 == null:
		出身注释.parse_bbcode("[center]你的出身为[color=LIGHT_SEA_GREEN]" + Player.属性_出身[Player.主角.出身]+"[/color]。") 
	else:
		出身注释.parse_bbcode("[center]"+注释) 
	pass # Replace with function body.


func _on_身份选择_pressed() -> void:
	var 身份名 = 身份按钮组.get_child(0).button_group.get_pressed_button().text
	for i in Player.属性_身份.size():
		var 文本 = Player.属性_身份[i]
		if 身份名 == str(文本):
			Player.主角.身份 = i
	var 注释 = Player.属性["身份"][Player.属性_身份[Player.主角.身份]]["注释"]
	if 注释 == "" or 注释 == null:
		身份注释.parse_bbcode("[center]你的身份为[color=LIGHT_SEA_GREEN]" + Player.属性_身份[Player.主角.身份]+"[/color]。") 
	else:
		身份注释.parse_bbcode("[center]"+注释) 
	pass # Replace with function body.
