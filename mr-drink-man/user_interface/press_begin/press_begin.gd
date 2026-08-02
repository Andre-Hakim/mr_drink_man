extends Control

func _ready() -> void:
	MessagBus.game_started.connect(_on_game_started)

func _on_game_started() -> void:
	visible = false
