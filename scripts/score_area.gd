extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if not GameManager.dead:
		AudioManager.play("point")
		GameManager.score += 1
