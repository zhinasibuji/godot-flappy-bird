extends Node2D

func _process(_delta: float) -> void:
	if Global.gameover and Input.is_action_just_pressed("jump"):
		Global.gameover = false
		Global.score = 0
		get_tree().reload_current_scene()

func _on_timer_timeout() -> void:
	if not Global.gameover:
		var pipe = preload("res://scenes/pipe.tscn").instantiate()
		add_child(pipe)
		
