extends Node

func play(sfx_name: String):
	var sfx = find_child(sfx_name)
	sfx.play()
