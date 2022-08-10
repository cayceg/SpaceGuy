extends Weapon

export var fire_rate = 50
var bullet = preload('res://actors/Weapons/Bullet.tscn')

func _process(delta: float) -> void:
	if Input.get_action_strength("fire"):
		var bullets_to_spawn := round(fire_rate * delta)
		for i in bullets_to_spawn:
			var bullet_instance = bullet.instance()
			get_parent().get_parent().add_child(bullet_instance)
			bullet_instance.position = global_position
