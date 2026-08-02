extends State


func enter():
	main_animation_player.play("baby_turn")
	await main_animation_player.animation_finished
	transitioned.emit(self, "look")
