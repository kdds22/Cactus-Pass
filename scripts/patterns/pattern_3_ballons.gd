extends KinematicBody2D

const SPEED = 200
var velocity = Vector2()

#func _unhandled_input(event):
#	if event.is_action_pressed("click"):
#		rotate(deg2rad(90))

func _ready():
	rotation = PI
	#rotation_degrees = 0

func _process(delta):
	var spin = Input.is_action_pressed("click");
	if spin:
		rotation_degrees += SPEED * delta;
	velocity = Vector2(1, 0).rotated(rotation) * SPEED * delta
	velocity = move_and_slide(velocity)


#func _ready():
#rotation = PI
#rotation_degrees = 0
#
#func _process(delta):
#
#var rotate_left = Input.is_action_pressed("ui_left");
#var rotate_right = Input.is_action_pressed("ui_right");
#var move_foward = Input.is_action_pressed("ui_up");
#var shooting = Input.is_action_pressed("ui_shot");
#
#if rotate_left:
#    rotation_degrees -= SPEED * delta;
#
#if rotate_right:
#    rotation_degrees += SPEED * delta;
#
#if move_foward:
#    velocity = Vector2(1, 0).rotated(rotation) * SPEED * delta
#
#velocity = move_and_slide(velocity)