extends KinematicBody2D

export var dir : int = -1
export var speed : int = 100
var velocity : Vector2 = Vector2()

func _process(delta):
	velocity.x = 0
	velocity.y = dir
	velocity = velocity.normalized() * speed
	move_and_collide(velocity*delta)

func stop():
	speed = 0

