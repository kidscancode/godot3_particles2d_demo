extends Area2D

func _on_Chest_input_event( viewport, event, shape_idx ):
	if event is InputEventMouseButton and event.pressed:
		$Coins.emitting = not $Coins.emitting
