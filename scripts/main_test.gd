extends Node

#var begin = preload("res://scenes/Begin.tscn")

func _ready():
	
	
	get_node("Cactu").connect("finish", self, "finish")
	


func finish():
	get_tree().change_scene("res://scenes/Begin.tscn")