extends Area2D

export var speed : int = 10

func _on_more_speed_body_entered(body):
	if body.is_in_group("cactu"):
		body.moreSpeed(speed)
