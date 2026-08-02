extends State


const raised_max: int = 6
## how many frames drink is held/not held
var raised_total: int = 0
var is_holding_button: bool = false
## threshold at which we increment/decrement cur_raise_timer
var raise_increment_timer: float = 0.5
## track the time holding/not holding
var cur_raise_timer: float = 0.0

func enter():
	raised_total = 0
	cur_raise_timer = 0.0

func physics_update(_delta: float):
	cur_raise_timer += _delta
	if cur_raise_timer >= raise_increment_timer:
		# reset our timer for next increment
		cur_raise_timer = 0.0
		raised_total = clampi(raised_total + 1, 0, raised_max)
		if raised_total == raised_max:
			# goto drink
			transitioned.emit(self, "drinking")
			return
		elif raised_total == 0:
			# goto idle?
			transitioned.emit(self, "idle")
			return
