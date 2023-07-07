extends Node2D

@export var item_id: int

var item_data


# Called when the node enters the scene tree for the first time.
func _ready():
	item_data = load_item_data(item_id)
	print(item_data)

func load_item_data(id):
	var file = FileAccess.open("res://data/item_database.json", FileAccess.READ)
	var data = JSON.parse_string(file.get_as_text())
	if data.has(str(id)):
		return data[str(id)]
	else:
		return data[str(1)]
	
func set_item_id(value:int):
	item_id = value
