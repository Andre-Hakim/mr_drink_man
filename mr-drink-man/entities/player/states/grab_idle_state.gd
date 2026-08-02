extends State

func enter():
	main_animation_player.play("hand_grab_idle")

func physics_update(_delta: float):
	if Input.is_action_just_released("right_hand"):
		transitioned.emit(self, "idle")
	if Input.is_action_just_pressed("drink"):
		transitioned.emit(self, "raiselower")
