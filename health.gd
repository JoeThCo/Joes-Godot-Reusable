class_name Health extends Node


signal dead


@export var start_health: float = 0.0
var current_health: float = 0.0


func _ready() -> void:
	current_health = start_health


func remove_health(amount: float) -> void:
	current_health -= amount
	if current_health <= 0:
		dead.emit()
