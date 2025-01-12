extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _process(_delta: float) -> void:
	if GameManager.gameover:
		animation_player.pause()
