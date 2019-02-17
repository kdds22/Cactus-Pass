extends KinematicBody2D

#export var speed = 200
#var velocity = Vector2()
var motion = Vector2()

func _ready():
	set_process(false)
	#rotation = PI
	#rotation_degrees = 0

func _physics_process(delta):
	if position.x <= -1670:
		position.x = -180
	var move = Input.is_action_pressed("click");
	if move:
		motion.x = -200
	else:
		motion.x = 0
	#velocity = Vector2(-1, 0) * speed * delta
	#velocity = move_and_slide(velocity)
	move_and_slide(motion)


func _on_VisibilityNotifier2D_screen_entered():
	set_process(true)


func _on_VisibilityNotifier2D_screen_exited():
	set_process(false)
	queue_free()
