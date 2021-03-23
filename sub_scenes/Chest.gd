extends Area2D

func _on_Chest_input_event( _viewport, event, _shape_idx ):
	if event is InputEventMouseButton and event.pressed:
		$Coins.emitting = not $Coins.emitting
