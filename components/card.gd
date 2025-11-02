class_name Card
extends Node

# 4:45 or 5:00 to 5:16
# 11:52 AM to ___

@export_subgroup("properties")
@export var description: String
@export var position: Vector2
@export var hand_icon: Sprite2D
@export var played_icon: Sprite2D
@export var msg: Label

var played: bool = false


func ready(_name: String) -> void:
	played_icon.position = Vector2(21, 21)
	played_icon.hide()
	
	$"Play Card".hide()
	$Blocks.hide()
	
	position.x = 261;

func moveCard(newx: int, newy: int) -> void:
	position = Vector2(newx, newy)


func _on_select_card_focus_entered() -> void:
	$"Apply/Play Card".show()
	$"Apply/Select Card".hide()
	$Apply.find_next_valid_focus()


func _on_play_card_focus_exited() -> void:
	$"Apply/Play Card".hide()
	$"Apply/Select Card".show()


func _on_play_card_pressed() -> void:
	played = true
	hand_icon.hide()
	played_icon.show()
	
	$"Apply/Play Card".hide()
	$"Apply/Select Card".hide()
	
	$Blocks.show()
	$CardBack.hide()
	$Message.hide()
	
