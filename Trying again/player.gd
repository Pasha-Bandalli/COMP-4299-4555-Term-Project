extends Node2D

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		spawn_chicken()

func spawn_chicken():
	var scene_tree = get_tree()
	var chicken_scene = preload("res://scenes/chicken.tscn")
	
	if scene_tree:
		var chicken_instance = chicken_scene
		if chicken_instance:
			scene_tree.get_root().add_child(chicken_instance)
			chicken_instance.global_position = global_position
