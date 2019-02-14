extends Node2D

var pre_patterns_1_2 = ["res://scenes/patterns/spin_1-2/ptn_2_pk-ct.tscn",
	"res://scenes/patterns/spin_1-2/ptn_2_pu-ct.tscn",
	"res://scenes/patterns/spin_1-2/ptn_2_or-ct.tscn"]

func _ready():
	randomize()
	var t = pre_patterns_1_2
	print(t[randi()%t.size()])