extends Sprite

export (int) var speed

func _process(delta):
	position += Vector2(speed, 0) * delta
	if position.x > 800:
		position.x = -210