extends Node

@onready var item_for_trade = $trade_item
@export var trade_item_id:int = 1

#trade values
var agreed_trade_price: int

#player values
@export var cash_on_hand: int

# Called when the node enters the scene tree for the first time.
func _ready():
	get_trade_item(trade_item_id)
	agreed_trade_price = item_for_trade.get_base_value()
	print(item_for_trade.item_data)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func get_trade_item(trade_item_id):
	item_for_trade.load_item_data(trade_item_id)
	return item_for_trade
