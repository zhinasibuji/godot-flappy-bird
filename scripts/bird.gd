extends RigidBody2D

const JUMP_VELOCITY = -400.0

func _physics_process(_delta: float) -> void:
	# Handle jump.
	if Input.is_action_just_pressed("jump") and not Global.gameover:
		Global.play_sfx("wing")
		linear_velocity.y = JUMP_VELOCITY
