extends RigidBody2D

export var min_speed = 150 # minimum speed range
export var max_speed = 250 #maximum speed range
var mob_types = ["walk","swim","Fly"]

func _ready():
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]
	

func _on_visibility_screen_exited():
	pass # Replace with function body.

func _on_Visibility_screen_exited():
	queue_free()
	
