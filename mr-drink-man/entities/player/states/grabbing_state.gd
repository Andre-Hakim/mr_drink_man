extends State

func enter():
	main_animation_player.play("hand_grabbing")
	await main_animation_player.animation_finished
	transitioned.emit(self, "grabidle")
