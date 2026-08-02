extends Node

@export var player_data: PlayerData

func _ready() -> void:
	player_data = PlayerData.new()
