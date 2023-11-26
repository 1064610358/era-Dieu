extends Node

var 名称库 = {}
#单字库 = 名称库["单字"]
var 主角 = {}
var 初始全局设置 = {}
var 属性 = {} #属性字典 包括类别 名称 id 注释
var 总属性组 = []#属性大类名
var 特质 = {} #特质字典 包括类别 名称 id 注释
var 设置 = {} #设置字典 包括类别 名称 id 注释
var 总特质组 = [] #特质大类名

var 阵营 = ["神祗","人类"]
var 身份 = ["正神","邪神","学者","神官"]
var 倾向 = ["公正","律己","纯善","无畏","血腥","恐惧","淫欲","诡诈"]
var 属性_性别 = []
var 属性_种族 = []
var 属性_已解锁种族 = []
var 属性_年龄段 = []
var 属性_性向 = []
var 属性_信仰 = []
var 属性_发色 = []
var 属性_瞳色 = []
var 属性_肤色 = []
var 属性_身材 = []
var 属性_身份 = []
var 属性_已解锁身份 = []
var 属性_出身 = []
var 属性_已解锁出身 = []
#同时只能存在一个值

#可同时存在多种 靠FLAG判断
var 特质_性怪癖 = [] #特质["性怪癖"]["生殖崇拜"]["FLAG"]
var 特质_性能力 = []
var 特质_症状 = []
#npc组[id].特质["性怪癖"]["生殖崇拜"]["FLAG"] 存疑
#func 人物属性判断(id,类别,大类,名称,FLAG):
#	return 人物组[id].类别[大类][名称][FLAG]
var 设置_游戏难度 = []

var 临时flag判断 = false


func _ready():
	运行()
	pass # Replace with function body.

func 更新全局属性():
	总属性组 = 属性.keys()
	属性_性别 = 属性["性别"].keys()
	属性_种族 = 属性["种族"].keys()
	属性_年龄段 = 属性["年龄段"].keys()
	属性_性向 = 属性["性向"].keys()
	属性_信仰 = 属性["信仰"].keys()
	属性_发色 = 属性["发色"].keys()
	属性_瞳色 = 属性["瞳色"].keys()
	属性_肤色 = 属性["肤色"].keys()
	属性_身材 = 属性["身材"].keys()
	属性_身份 = 属性["身份"].keys()
	属性_出身 = 属性["出身"].keys()
	for i in 属性_种族.size():
		if 属性["种族"][属性_种族[i]]["FLAG"] == true:
			属性_已解锁种族.push_back(属性_种族[i])
	for i in 属性_身份.size():
		if 属性["身份"][属性_身份[i]]["FLAG"] == true:
			属性_已解锁身份.push_back(属性_身份[i])
	for i in 属性_出身.size():
		if 属性["出身"][属性_出身[i]]["FLAG"] == true:
			属性_已解锁出身.push_back(属性_出身[i])

func 更新全局特质():
	总特质组 = 特质.keys()
	特质_性怪癖 = 特质["特质_性怪癖"].keys()
	特质_性能力 = 特质["特质_性能力"].keys()
	特质_症状 = 特质["特质_症状"].keys()
	print(特质_性怪癖)

func 更新全局设置():
	设置_游戏难度 = 设置["游戏难度"].keys()
	

func 运行():
	导入全局相关数据文件()
	导入名称库()
	更新全局属性()
	更新全局特质()
	更新全局设置()
	print(主角)
	pass
func 导入全局相关数据文件():
	导入人物数据("csv/主角.csv",主角)  #导入默认主角数据
	导入人物数据("csv/初始全局设置.csv",初始全局设置)  #导入初始全局设置
	导入属性注释("csv/属性注释.csv",属性)#导入属性与相关注释
	导入属性注释("csv/特质Flag.csv",特质)#导入特质与相关注释
	导入属性注释("csv/设置.csv",设置)#导入设置与相关注释

func 导入名称库():
	导入文字数据("csv/默认名字库.txt",名称库)
#	print(名称库["中国风-姓氏"][randi_range(0,名称库["中国风-姓氏"].size()-1)]) 随机中国风姓氏
	pass

func 放入角色组(角色:Dictionary,角色组名:Array):
	角色组名.push_back(角色)

func 导入人物数据(路径,名称:Dictionary): #一个文件只能导入一个角色数据
	var file = FileAccess.open(路径,FileAccess.READ)
	file.get_csv_line(",") #文件注释
	while not file.eof_reached():
		var 表格内容 = file.get_csv_line(",")
		if 表格内容.size() == 1:
			break
		var 对象={}
		var 类型 = 表格内容[0]
		var 数据名称 = 表格内容[1]
		var 数据值 = 表格内容[2]
		if 类型 == "string":
			对象[数据名称]= str(数据值)
		elif 类型 == "int":
			对象[数据名称]= int(数据值)
		elif 类型 == "Dictionary":
			var 数组 = 数据值.split(",")
			var 字典 = {}
			for i in 数组.size():
				var 字典值 = 数组[i].split(":")
				var key = 字典值[0]
				var 值 = 字典值[1]
				字典[key]= 值
			对象[数据名称]= 字典
			print(对象[数据名称])
		elif 类型 == "Array":
			对象[数据名称] = 数据值.split_floats(",")
		名称.merge(对象)
	return 名称

#导入外部文件 如名字库等 名称为变量名 
func 导入文字数据(路径,名称):
	var file = FileAccess.open(路径,FileAccess.READ)
	var 对象={}
	file.get_csv_line("\n")
	while not file.eof_reached():#	for i in 行数:
		var 标识 = file.get_csv_line("\n")
		var 表格内容 = file.get_csv_line(",") #获得规定行数一行的数据 
		对象= {标识[0]:表格内容}
		名称.merge(对象)  #字典内部相加 如{"休息"：[44，66]，"加":[yy,99]}
	return 名称

func 导入属性注释(路径,名称):#第一排为属性总类 以##标志区分属性类别 以空行区分一类 作为分割  print(属性注释["主角性别"]["男性"]["注释"])
	var file = FileAccess.open(路径,FileAccess.READ)
	file.get_csv_line(",") #第一排 文件注释
	var 对象 = {}
	var key =[]
	var 值 = {}
	var 库值 = {}
	var 属性类名 
	while not file.eof_reached():
		for j in 9999:
			var 首排 = file.get_csv_line(",")
			if 首排[0] == "##":
				属性类名 = 首排[1]
				对象 ={}
				key = file.get_csv_line(",")
			elif 首排[0] == "；":
				continue
			elif 首排[0] == "" or 首排[0] == null:
				break
			else:
				值 ={}
				for m in key.size():
					if key[m] == "":
						break
					else:
						if key[m] == "FLAG":
							值[key[m]]= bool(int(首排[m]))
						elif key[m] == "id":
							值[key[m]]= int(首排[m])
						else:
							值[key[m]]= str(首排[m])
					对象.merge({首排[1]:值})
				库值.merge({str(属性类名):对象})
		名称.merge(库值)
	return 名称

func 年龄段判断(年龄:int):
	if 年龄 < 0:
		print("错误，年龄不可能小于0。")
	elif 年龄 <= 6:
		return 属性_年龄段[0] 
	elif 年龄 <= 12:
		return 属性_年龄段[1] 
	elif 年龄 <= 17:
		return 属性_年龄段[2] 
	elif 年龄 <= 25:
		return 属性_年龄段[3] 
	elif 年龄 <= 40:
		return 属性_年龄段[4] 
	elif 年龄 <= 60:
		return 属性_年龄段[5] 
	else:
		return 属性_年龄段[6]

func 特质由数字转换为文本(特质组:Array,特质名称组:Array):
	var 文本 =""
	for i in 特质组.size():
		if i == 特质组.size()-1:
			文本 += 特质名称组[特质组[i]]
		else:
			文本 += 特质名称组[特质组[i]]+"、"
	return 文本

func 调用脚本函数(路径,函数名):
	var 脚本 = load(路径)
	脚本.connect("调用脚本",函数名)
	pass

#func 信号转接(信号名,场景路径,):
#	print("运行")
#	emit_signal(信号名,)
#	pass
