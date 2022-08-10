extends KinematicBody2D

var speed = Vector2(0, -500)
var velocity = Vector2.DOWN

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	move_and_collide(velocity * speed * delta)
	if check_out_of_bounds():
		queue_free()

func check_out_of_bounds() -> bool:
	if global_position.y < -10:
		return true
	else: return false
