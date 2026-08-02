extends Node
class_name State

@export var hand_animation_player: AnimationPlayer
@export var player_animation_player: AnimationPlayer

signal transitioned(state, new_state_name)

func enter():
	pass

func exit():
	pass

func update(_delta: float):
	pass

func physics_update(_delta: float):
	pass
