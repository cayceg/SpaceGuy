extends Actor

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity = move()
	update_weapons()
	
func move() -> Vector2:
	var direction: = Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	)
	return speed * direction.normalized()

func update_weapons() -> void:
	var children = get_children()
	var weapons = []
	
	for child in children:
		if child is Weapon:
			weapons.append(child)
	
	if weapons.size() == 1:
		weapons[0].set_position(Vector2(0, -20))
	elif weapons.size() == 2:
		weapons[0].set_position(Vector2(-12, -8))
		weapons[1].set_position(Vector2(12, -8))
	elif weapons.size() == 3:
		weapons[0].set_position(Vector2(0, -20))
		weapons[1].set_position(Vector2(-12, -8))
		weapons[2].set_position(Vector2(12, -8))
