extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.text = 'ver '+ProjectSettings.get_setting("application/config/version")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_button_down() -> void:
	get_tree().change_scene_to_file("res://blockcoding/blockcoding.tscn")
