extends RigidBody2D

const JUMP_VELOCITY = -400.0

func _physics_process(_delta: float) -> void:
	# Handle jump.
	if Input.is_action_just_pressed("jump") and not GameManager.dead:
		AudioManager.play("wing")
		linear_velocity.y = JUMP_VELOCITY
		angular_velocity = -3.0
	elif linear_velocity.y > 0.0:
		angular_velocity = 1.5
	elif rotation_degrees < -30:
		angular_velocity = 0
