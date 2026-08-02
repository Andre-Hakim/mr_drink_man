extends State

func enter():
	main_animation_player.play("hand_idle")

func physics_update(_delta: float):
	if Input.is_action_just_pressed("start_windup"):
		transitioned.emit(self, "windup")
