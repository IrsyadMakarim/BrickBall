tool
extends StaticBody2D

export (Color) var brick_color = Color(1, 1, 1) setget set_color
var health = 25

func _ready():
	set_color(brick_color)


func set_color(color):
	brick_color = color
	if is_inside_tree():
		get_node("Sprite").modulate = color

func _on_Ball_body_entered(body):
	if "Ball" in body.name:
		queue_free()
