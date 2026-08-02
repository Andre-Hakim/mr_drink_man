extends State

func enter():
	main_animation_player.play("hand_windup")
	await main_animation_player.animation_finished
	transitioned.emit(self, "windupidle")
	
func physics_update(_delta: float):
	if Input.is_action_just_pressed("right_hand"):
		transitioned.emit(self, "grabbing")
