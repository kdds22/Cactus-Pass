extends KinematicBody2D


const SPEED = 200

var velocity = Vector2()

signal points

func _ready():
	set_process(false)
	rotation = PI
	#rotation_degrees = 0


func _process(delta):
	var spin = Input.is_action_pressed("click");
	if spin:
		rotation_degrees += SPEED * delta;
	velocity = Vector2(1, 0).rotated(rotation) * SPEED * delta
	velocity = move_and_slide(velocity)


func _on_VisibilityNotifier2D_screen_entered():
	set_process(true)


func _on_VisibilityNotifier2D_screen_exited():
	set_process(false)
	emit_signal("points")
	queue_free()
