extends Sprite2D
@onready var joy_stick: Node2D = $".."

var pressed = false

@export var maxSize = 378/2
@export var deadZone = 5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	maxSize *= joy_stick.scale.x


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if not pressed:
		global_position = lerp(global_position, joy_stick.global_position, delta * 15)
		joy_stick.pos = Vector2(0,0)

func calVector():
	if abs((global_position.x - joy_stick.global_position.x)) >= deadZone:
		joy_stick.pos.x = (global_position.x-joy_stick.global_position.x)/maxSize
	if abs((global_position.y - joy_stick.global_position.y)) >= deadZone:
		joy_stick.pos.y = (global_position.y-joy_stick.global_position.y)/maxSize

func _on_button_button_down() -> void:
	pressed = true


func _on_button_button_up() -> void:
	pressed = false


func _on_button_gui_input(event: InputEvent) -> void:
	if event is InputEventScreenTouch:
		pressed = event.pressed
	if event is InputEventScreenDrag:
		if pressed:
			var pos = to_global(event.position)
			pos.x -= maxSize/2
			pos.y -= maxSize/2
			if pos.distance_to(joy_stick.global_position) <= maxSize:
				global_position = pos
			else:
				var angle = joy_stick.global_position.angle_to_point(pos)
				global_position.x = joy_stick.global_position.x + cos(angle) * maxSize
				global_position.y = joy_stick.global_position.y + sin(angle) * maxSize
			calVector()
