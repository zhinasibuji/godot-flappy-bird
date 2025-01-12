extends Node

var gameover = false
var score = 0

func play_sfx(sfx_name: String):
	var sfx = find_child(sfx_name)
	sfx.play()
