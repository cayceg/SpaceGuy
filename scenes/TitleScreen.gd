extends Control

func _ready() -> void:
	for button in $Menu/CenterRow/ButtonsContainer.get_children():
		button.connect('pressed', self, 'on_Button_pressed', [button.scene_to_load])
		
func on_Button_pressed(scene_to_load):
	if(scene_to_load == 'quit'):
		get_tree().quit()
		pass
	get_tree().change_scene(scene_to_load)
