extends RigidBody2D

export var ball_speed = 150.0

func _ready():
	apply_impulse(Vector2(), Vector2(1, 1).normalized() * ball_speed)
