extends Area2D


# Called when the node enters the scene tree for the first time.

func _ready():
	input_pickable = true
	connect("mouse_entered", self._on_mouse_entered)

func _on_mouse_entered() -> void:
	print('!')
