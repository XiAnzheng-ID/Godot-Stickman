extends KinematicBody2D

var speed = 100
var move = Vector2()

#func _ready():
#	set_process(true)
#	set_physics_process(true)

func _process(delta):
	if Global.Player != null:
		move = global_position.direction_to(Global.Player.global_position)
		
	global_position += move * speed * delta
