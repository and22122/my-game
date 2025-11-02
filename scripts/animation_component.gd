# https://www.youtube.com/watch?v=yzbxoZFsU2Y&t=469s
class_name AnimationComponent
extends Node

@export_subgroup("nodes")
@export var sprite: AnimatedSprite2D


func handle_horizontal_flip(move_direction: float) -> void:
	if (move_direction) == 0:
		return
	
	sprite.flip_h = false if move_direction > 0 else true

func handle_move_animation(move_direction: float) -> void:
	handle_horizontal_flip(move_direction)
	
	if (move_direction != 0):
		sprite.play("walk")
	else:
		sprite.play("idle")

func handle_jump_animation(jumping: bool, is_falling: bool) -> void:
	if jumping:
		sprite.play("jump1")
	elif is_falling:
		sprite.play("fall")
