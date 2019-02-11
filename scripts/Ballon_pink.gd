extends Node2D



func _on_Area_ballon_body_entered(body):
	if body.is_in_group('cactu'):
		#body.stop()
		queue_free()