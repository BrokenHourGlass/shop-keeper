extends Node2D

@export var item_id: int

var item_data


# Called when the node enters the scene tree for the first time.
func _ready():
	item_data = load_item_data(item_id)

func load_item_data(id):
	var file = FileAccess.open("res://data/item_database.json", FileAccess.READ)
	var data = JSON.parse_string(file.get_as_text())
	if data.has(str(id)):
		return data[str(id)]
	else:
		return data[str(1)]
	
func set_item_id(value:int):
	item_id = value

func get_base_value():
	return item_data.base_value

func get_item_name():
	return item_data.name

func get_item_rarity():
	return item_data.rarity

func get_item_type():
	return item_data.type

func get_sprite():
	return item_data.sprite_path
