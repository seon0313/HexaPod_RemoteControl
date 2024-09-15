extends Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.pressed.connect(self._button_pressed)

func _button_pressed():
	print("Press")
	get_tree().change_scene_to_file('res://ui/connect_hexa/connectHexaPod.tscn')


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
