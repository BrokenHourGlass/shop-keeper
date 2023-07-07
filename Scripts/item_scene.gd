extends Node2D

@export var item_id: int

# Called when the node enters the scene tree for the first time.
func _ready():
	item_id = 1
	load_item_data(item_id)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func load_item_data(id):
	var file = FileAccess.open("res://data/item_database.json", FileAccess.READ)
	var data = JSON.parse_string(file.get_as_text())
	print(data["1"].name)
	#print(item)
