extends RigidBody2D
var rng :RandomNumberGenerator = RandomNumberGenerator.new()
var mouse_in  =false
signal clicked_on



func _ready() -> void:
	var x_lin = rng.randf_range(-1,1)
	var y_lin = rng.randf_range(-1,1)
	var lin =  Vector2(x_lin, y_lin)*100
	set_linear_velocity(lin)
	
func _process(delta: float) -> void:
	if(Input.is_action_just_pressed("click") and mouse_in):
		clicked_on.emit()
	

	


func _on_mouse_entered() -> void:
	mouse_in = true

func _on_mouse_exited() -> void:
	mouse_in = false
