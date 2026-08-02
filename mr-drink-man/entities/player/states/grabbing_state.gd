extends State

func enter():
	main_animation_player.play("hand_grabbing")
	await main_animation_player.animation_finished
	transitioned.emit(self, "grabidle")

func physics_update(_delta: float):
	if Input.is_action_just_released("right_hand"):
		transitioned.emit(self, "idle")
