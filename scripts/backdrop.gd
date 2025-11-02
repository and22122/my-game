extends Node2D

@export_subgroup("Key Nodes")
@export var player: Player
@export var score: Label

var card_list: Array[Card] = []

var block_info = [
	[]
]

func update_score(newscore)-> void:
	$score.text = "Score: " + str(newscore);

func ready()-> void:
	update_score(0);
