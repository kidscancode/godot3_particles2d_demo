extends Node2D

export (PackedScene) var Bomb
export (PackedScene) var Explosion

func _input(event):
	if event.is_action_pressed("mouse_click"):
		var b = Bomb.instance()
		b.position = get_global_mouse_position()
		add_child(b)
		b.connect("boom", self, "explode")
		
func explode(_position):
	var e = Explosion.instance()
	e.position = _position + Vector2(0, 30)
	add_child(e)
	