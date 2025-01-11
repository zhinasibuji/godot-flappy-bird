extends Node2D

signal add_score

func _ready() -> void:
	position.y = randi_range(-150, 150)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if not GameManager.dead:
		position.x -= delta * 200
		if position.x < -20:
			queue_free()

func _on_score_area_body_entered(body: Node2D) -> void:
	if not GameManager.dead:
		AudioManager.play("point")
		emit_signal("add_score")
