extends Node2D

@onready var label: Label = $Label
@onready var bird: RigidBody2D = $Bird

func _process(delta: float) -> void:
	if GameManager.dead and Input.is_action_just_pressed("jump"):
		GameManager.dead = false
		get_tree().reload_current_scene()

func _on_timer_timeout() -> void:
	if not GameManager.dead:
		var pipe = preload("res://scenes/pipe.tscn").instantiate()
		add_child(pipe)
		pipe.add_score.connect(score_up)
		
func score_up() -> void:
	label.score += 1
	label.text = str(label.score)
