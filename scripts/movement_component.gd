class_name MovementComponent
extends Node

@export_subgroup("settings")
@export var speed: float = 100

# Called when the node enters the scene tree for the first time.
func handle_horizontal_movment(body: CharacterBody2D, direction: float) -> void:
	body.velocity.x = direction * speed

func handle_vertical_movement(body: CharacterBody2D, direction: float) -> void:
	body.velocity.y = direction * speed
