extends State

## total seconds random range before turning
@export var rand_range: int = 30

var current_rand: int
var current_idle_time: float = 0.0

func enter():
	current_idle_time = 0.0
	current_rand = randi_range(2, rand_range)
	print("current rand: ", current_rand)
	print("current rand: ", current_rand)
	main_animation_player.stop()
	main_animation_player.play("baby_idle")

func physics_update(_delta: float):
	current_idle_time += _delta
	if current_idle_time >= current_rand:
		print("turning!")
		transitioned.emit(self, "turn")
