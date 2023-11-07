extends Node2D

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		spawn_chicken(event.global_position)

func spawn_chicken(position):
	var chicken_scene = preload("res://scenes/chicken.tscn")
	if chicken_scene:
		var chicken_instance = chicken_scene.instantiate()
		if chicken_instance:
			get_tree().get_root().add_child(chicken_instance)
			chicken_instance.global_position = position
