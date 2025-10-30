extends RigidBody2D
var rng :RandomNumberGenerator = RandomNumberGenerator.new()



func _ready() -> void:
	var x_lin = rng.randf_range(-1,1)
	var y_lin = rng.randf_range(-1,1)
	var lin =  Vector2(x_lin, y_lin)*100
	set_linear_velocity(lin)
	
