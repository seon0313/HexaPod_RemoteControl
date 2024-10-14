extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(self._press)

func _press() -> void:
	get_tree().change_scene_to_file("res://main.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
