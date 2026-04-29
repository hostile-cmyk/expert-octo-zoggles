extends CharacterBody2D

@export var speed = 300

func get_input():
	var input_direction = Input.get_vector("Left", "Right", "Up", "Down").normalized()
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
