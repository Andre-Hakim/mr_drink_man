extends State


const raised_max: int = 3
## how many frames drink is held/not held
var raised_total: int = 0
var is_holding_button: bool = false
## threshold at which we increment/decrement cur_raise_timer
var raise_increment_timer: float = 0.15
## track the time holding/not holding
var cur_raise_timer: float = 0.0
var _is_holding_drink: bool = true


func enter():
	_is_holding_drink = true
	raised_total = 0
	cur_raise_timer = 0.0
	secondary_animation_player.stop()
	sm_owner.start_tilting()

func exit():
	secondary_animation_player.play("player_idle")

func physics_update(_delta: float):
	if Input.is_action_just_released("right_hand"):
		# TODO: drop if raised_max != 0
		transitioned.emit(self, "idle")
	cur_raise_timer += _delta
	if Input.is_action_just_released("drink"):
		_is_holding_drink = false
	elif Input.is_action_just_pressed("drink"):
		_is_holding_drink = true
	if cur_raise_timer >= raise_increment_timer:
		# reset our timer for next increment
		cur_raise_timer = 0.0
		if _is_holding_drink:
			raised_total += 1
		else:
			raised_total -= 1
		raised_total = clampi(raised_total, 0, raised_max)
		sm_owner.move_tilt_sprite(raised_total)
		if raised_total == raised_max:
			# goto drink
			#transitioned.emit(self, "drinking")
			return
		elif raised_total == 0:
			# goto idle?
			#transitioned.emit(self, "idle")
			return
