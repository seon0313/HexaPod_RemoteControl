extends Label


@export var text_: String = 'Loading'
@export var dotLength: int = 4
var length = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	while true:
		length += 1
		self.text = text_
		for i in range(length): self.text += '.'
		await get_tree().create_timer(1).timeout
		if length >= dotLength:
			length = 0
			self._connected()
			break
func _connected():
	get_tree().change_scene_to_file("res://ui/HexaControll/HexaControll.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
