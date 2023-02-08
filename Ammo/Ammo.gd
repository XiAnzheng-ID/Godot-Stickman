extends KinematicBody2D

var look = true
var velocity = Vector2(1 , 0)
var speed = 500

# Called when the node enters the scene tree for the first time.
#func _ready():
#	set_process(true)
#	set_physics_process(true) 

func _process(delta):
	#Mouse Target
	if look:
		look_at(get_global_mouse_position())
		look = false
	global_position += velocity.rotated(rotation) * speed * delta

#func _physics_process(delta):
#	var kill = move_and_collide(Vector2(+speed * delta , 0))
#	if (kill):
#		kill.get_collider().queue_free()
#		queue_free()

#destroy bullet when not rendered in screen (save memory)
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
