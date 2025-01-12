extends Area2D

func _on_body_entered(_body: Node2D) -> void:
	if not Global.gameover:
		Global.play_sfx("hit")
		Global.gameover = true
 
