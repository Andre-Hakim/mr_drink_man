class_name Player
extends Node2D

@onready var guy_tilt_head_sprite: Sprite2D = $GuyTiltHeadSprite
@onready var guy_idle_sprite: Sprite2D = $GuyIdleSprite

var _sprites: Array[Sprite2D] = []

func _ready() -> void:
	for child in get_children():
		if child is Sprite2D:
			_sprites.append(child)

func hide_all_sprites() -> void:
	for sprite in _sprites:
		sprite.visible = false

func start_tilting() -> void:
	guy_idle_sprite.visible = false
	guy_tilt_head_sprite.visible = true

func move_tilt_sprite(frame: int) -> void:
	print('tilt frame: ', frame)
	guy_tilt_head_sprite.frame = frame
