extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if GameManager.dead:
		animation_player.pause()
