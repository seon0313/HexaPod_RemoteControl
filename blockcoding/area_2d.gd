extends Area2D


var is_in = false;

# Called when the node enters the scene tree for the first time.
func _ready():
	input_pickable = true
	connect("mouse_entered", self._on_mouse_entered)

func _process(delta: float) -> void:
	if is_in and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		self.position = get_local_mouse_position()

func _on_mouse_entered() -> void:
	print('!')
	is_in=true

func _mouse_exit() -> void:
	is_in=false
