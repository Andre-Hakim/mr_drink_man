extends Node
class_name State

@export var sm_owner: Node
@export var main_animation_player: AnimationPlayer
@export var secondary_animation_player: AnimationPlayer
@export var on_enter_audio: AudioStreamPlayer2D

signal transitioned(state, new_state_name)

func enter():
	pass

func exit():
	pass

func update(_delta: float):
	pass

func physics_update(_delta: float):
	pass
