extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.pressed.connect(self._press)

func _press():
	get_tree().change_scene_to_file("res://ui/connect_hexa/connectHexaPod.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
