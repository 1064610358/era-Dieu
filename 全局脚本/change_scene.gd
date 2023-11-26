extends CanvasLayer

@onready var 动画:AnimationPlayer = $AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready():
	self.hide()
	pass # Replace with function body.

func 场景改变(路径):
	self.show()
	self.set_layer(999)
	动画.play("new_animation")
	await 动画.animation_finished
	get_tree().change_scene_to_file(路径)
	动画.play_backwards("new_animation")
	await 动画.animation_finished
	self.set_layer(-1)
	self.hide()
	pass
