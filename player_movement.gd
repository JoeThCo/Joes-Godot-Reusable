class_name PlayerMovement extends Node


@export var speed := 300.0
@export var rigidbody: RigidBody2D


func _physics_process(_delta: float) -> void:
	var direction := Input.get_vector("player_left", "player_right", "player_up", "player_down")
	rigidbody.linear_velocity = direction * speed
