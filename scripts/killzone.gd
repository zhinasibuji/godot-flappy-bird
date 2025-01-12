extends Area2D

func _on_body_entered(_body: Node2D) -> void:
	if not GameManager.gameover:
		AudioManager.play("hit")
		GameManager.gameover = true
 
