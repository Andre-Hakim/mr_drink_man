class_name Player
extends Node2D

var _sprites: Array[Sprite2D] = []

func _ready() -> void:
	for child in get_children():
		if child is Sprite2D:
			_sprites.append(child)

func hide_all_sprites() -> void:
	for sprite in _sprites:
		sprite.visible = false
	
