extends Node2D

@onready var score_area: Area2D = $ScoreArea

func _ready() -> void:
	position.y = randi_range(-150, 150)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if not GameManager.gameover :
		position.x -= delta * 200
		if position.x < -20:
			queue_free()
