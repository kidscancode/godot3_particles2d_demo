extends Node2D

func _input(event):
	if event.is_action_pressed("ui_left"):
		$Rain.emitting = not $Rain.emitting
	if event.is_action_pressed("ui_right"):
		$UpsideDown.emitting = not $UpsideDown.emitting