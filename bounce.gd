extends RigidBody2D



func _on_body_entered(body: Node) -> void:
	print(linear_velocity.y)
	print(linear_velocity.x)
	set_linear_velocity(Vector2(-linear_velocity.x, -linear_velocity.y*500000000))
