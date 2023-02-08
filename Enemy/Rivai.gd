extends KinematicBody2D

var speed = 80
var move = Vector2() 
var hp = 3
#func _ready():
#	set_process(true)
#	set_physics_process(true)

func _process(delta):
	#enemy AI movement 
	#check if the player is there and not stunned 
	if Global.Player != null :
		move = global_position.direction_to(Global.Player.global_position)
	global_position += move * speed * delta
	
	#check health number
	if hp <= 0:
		queue_free()

func _on_Hitbox_area_entered(area):
	if area.is_in_group("kill"):
		modulate = Color.red
		hp -= 1
		$Timer.start()
		area.get_parent().queue_free()
	

func _on_Timer_timeout():
	modulate = Color("ffffff")
	 # Replace with function body.
