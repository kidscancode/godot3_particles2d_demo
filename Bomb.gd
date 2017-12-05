extends RigidBody2D

signal boom

func _ready():
	randomize()
	angular_velocity = rand_range(-PI, PI)

func _on_Bomb_body_entered( body ):
	if body.get_name() == "Ground":
		emit_signal("boom", position)
		queue_free()