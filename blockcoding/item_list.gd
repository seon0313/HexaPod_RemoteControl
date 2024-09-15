extends ItemList


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.select(0)

func _on_ItemList_item_selected(index: int):
	print(index)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
