tool
extends StaticBody2D

export (Color) var brick_color = Color(1, 1, 1) setget set_color
var hit = 0

func _ready():
	set_color(brick_color)


func set_color(color):
	brick_color = color
	if is_inside_tree():
		get_node("Sprite").modulate = color

func _on_Ball_body_entered(body):
	if "Ball" in body.name:
		if hit == 0:
			hit += 1
			set_color(Color(255, 0, 0))
		elif hit == 1:
			queue_free()
