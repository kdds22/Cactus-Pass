extends KinematicBody2D

const SPEED = 200
var velocity = Vector2()

#func _unhandled_input(event):
#	if event.is_action_pressed("click"):
#		rotate(deg2rad(90))

func _ready():
	set_process(false)
	rotation = PI
	#rotation_degrees = 0

func _process(delta):
	var spin = Input.is_action_pressed("click");
	if spin:
		print('rodando')
		rotation_degrees += SPEED * delta;
	velocity = Vector2(1, 0).rotated(rotation) * SPEED * delta
	velocity = move_and_slide(velocity)



func _on_VisibilityNotifier2D_screen_entered():
	print('opa: screen_entered')
	set_process(true)


func _on_VisibilityNotifier2D_screen_exited():
	print('opa: screen_exited')
	set_process(false)
