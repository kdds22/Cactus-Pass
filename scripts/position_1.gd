extends Node2D

var pre_patterns_1 = [
	preload("res://scenes/patterns/plane/ptn_p_or-ct.tscn"),
	preload("res://scenes/patterns/plane/ptn_p_pk-ct.tscn"),
	preload("res://scenes/patterns/plane/ptn_p_pu-ct.tscn")]
var pre_t

func _ready():
	randomize()
	var ptt = pre_patterns_1
	pre_t = ptt[randi()%ptt.size()]
	
func _process(delta):
	var pre_pattern = pre_t.instance()
	pre_pattern.position = position
	#pre_pattern.scale = Vector2(0.4,0.4)
	get_parent().add_child(pre_pattern)
	queue_free()