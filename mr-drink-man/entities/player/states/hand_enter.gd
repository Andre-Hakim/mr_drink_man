extends State

func enter():
	hand_animation_player.play("hand_enter")
	await hand_animation_player.animation_finished
	transitioned.emit(self, "idle")
