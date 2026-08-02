extends State

## total seconds random range before turning
@export var rand_range: int = 30

var current_rand: int
var current_idle_time: float = 0.0


func enter():
	current_idle_time = 0.0
	on_enter_audio.play()
	current_rand = randi_range(1, rand_range)
	main_animation_player.play("baby_look")


func physics_update(_delta: float):
	current_idle_time += _delta
	if current_idle_time >= current_rand:
		transitioned.emit(self, "idle")
