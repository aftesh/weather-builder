extends Node2D

func _process(delta):
	if Input.is_key_pressed(KEY_Q):
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
