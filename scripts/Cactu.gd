extends KinematicBody2D

export var dir : int = -1
export var speed : int = 200
var velocity : Vector2 = Vector2()

func _process(delta):
	velocity.x = 0
	velocity.y = dir
	velocity = velocity.normalized() * speed
	move_and_collide(velocity*delta)

func stop():
	speed = 0
	$AnimationPlayer.stop()



func _on_Area2D_body_entered(body):
	if body.is_in_group('ballon_color'):
		stop()
		body.queue_free()
