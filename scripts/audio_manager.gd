extends Node

func play(name: String):
	var sfx = find_child(name)
	sfx.play()
