extends Node

var score: int = 0
@onready var label: Label = $"../Character/Label"


func add_coin(value: int) -> void:
	score += value
	print(score)
	label.text = "Score: " + str(value)
	print(score)
	
