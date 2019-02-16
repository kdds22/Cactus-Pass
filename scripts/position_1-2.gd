extends Node2D

var pre_patterns_1_2 = [
	preload("res://scenes/patterns/spin_1-2/ptn_2_pk-ct.tscn"),
	preload("res://scenes/patterns/spin_1-2/ptn_2_pu-ct.tscn"),
	preload("res://scenes/patterns/spin_1-2/ptn_2_or-ct.tscn")]
var pre_t

func _ready():
	randomize()
	pre_t = pre_patterns_1_2[randi()%pre_patterns_1_2.size()]
	
func _process(delta):
	var pre_pattern = pre_t.instance()
	pre_pattern.position = position
	pre_pattern.scale = Vector2(0.4,0.4)
	get_parent().add_child(pre_pattern)
	queue_free()