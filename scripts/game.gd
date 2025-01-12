extends Node2D

@onready var label: Label = $Label
var score = 0

func _process(_delta: float) -> void:
	if GameManager.gameover and Input.is_action_just_pressed("jump"):
		GameManager.gameover = false
		get_tree().reload_current_scene()

func _on_timer_timeout() -> void:
	if not GameManager.gameover:
		var pipe = preload("res://scenes/pipe.tscn").instantiate()
		add_child(pipe)
		pipe.score_area.body_entered.connect(score_up)
		
func score_up(_body) -> void:
	if not GameManager.gameover:
		AudioManager.play("point")
		score += 1
		label.text = str(score)
