extends Node2D

var main = preload("res://scenes/main_test.tscn")

func _on_btn_play_button_up():
	get_tree().change_scene_to(main)
