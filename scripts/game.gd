extends Node2D

func _process(delta: float) -> void:
	if GameManager.dead:
		if Input.is_action_just_pressed("jump"):
			GameManager.score = 0
			GameManager.dead = false
			get_tree().reload_current_scene()

func _on_timer_timeout() -> void:
	if not GameManager.dead:
		var pipe = preload("res://scenes/pipe.tscn").instantiate()
		add_child(pipe)
