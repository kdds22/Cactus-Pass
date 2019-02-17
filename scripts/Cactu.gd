extends KinematicBody2D

var pre_try_again = preload("res://scenes/Try_Again.tscn")

export var dir : int = -1
export var speed : int = 200
var velocity : Vector2 = Vector2()

signal finish

func finish():
	emit_signal("finish")

func _process(delta):
	velocity.x = 0
	velocity.y = dir
	velocity = velocity.normalized() * speed
	move_and_collide(velocity*delta)

func stop():
	hide_all()
	speed = 0
	$AnimationPlayer.stop()
	var try_again = pre_try_again.instance()
	$Camera2D.add_child(try_again)

func hide_all():
	get_node("../Patterns").hide()

func moreSpeed(value):
	speed += value

func _on_Area2D_body_entered(body):
	if body.is_in_group('ballon_color'):
		stop()
		body.queue_free()
