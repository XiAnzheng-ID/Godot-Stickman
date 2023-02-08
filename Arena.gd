extends Node2D

var enemy = preload("res://Enemy/Rivai.tscn")

func _ready():
	Global.node_creation_parent = self

func _exit_tree():
	Global.node_creation_parent = null

func _on_Spawner_timeout():
	#spawn random enemy on random location between range
	var enemy_position = Vector2(rand_range(-200, 1200), rand_range(-110, 410))
	
	#prevent the enemy spawn on player screen
	while enemy_position.x < 1100 and enemy_position.x > -80 or enemy_position.y < 360 and enemy_position.y > -45 :
		enemy_position = Vector2(rand_range(-200, 1200), rand_range(-110, 410))
	
	Global.instance_node(enemy, enemy_position, self)
