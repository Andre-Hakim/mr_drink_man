extends State

func physics_update(_delta: float):
	# press any button to start
	if Input.is_anything_pressed():
		MessagBus.game_started.emit()
		transitioned.emit(self, "Running")
