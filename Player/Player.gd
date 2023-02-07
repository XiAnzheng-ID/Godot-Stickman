extends KinematicBody2D

var ammo = preload("res://Ammo/Ammo.tscn")
var speed = 150
var shoot = true
var move = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	set_physics_process(true)
	Global.Player = self
	
func _exit_tree():
	Global.Player = null
	

func _process(delta):
	#spawn ammo
	if Input.is_action_pressed("ammo") and shoot :
		var ammoinstance = ammo.instance()
		ammoinstance.position = Vector2(position.x , position.y)
		get_tree().get_root().add_child(ammoinstance)
		$Timer.start()
		shoot = false
#Control
func _physics_process(delta):
	#movement
	move.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	move.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	global_position += speed * move * delta
	#fix the diagonal movement
	move = move.normalized()


func _on_Timer_timeout():
	shoot = true
