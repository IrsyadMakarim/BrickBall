extends StaticBody2D

export var speed = 150.0

var left_limit = 0
var right_limit = 0

func _ready():
	set_process(true)
	
	left_limit = get_viewport_rect().position.x + (get_node("Sprite").get_texture().get_width()/2)
	right_limit = get_viewport_rect().position.x + get_viewport_rect().size.x - (get_node("Sprite").get_texture().get_width() / 2)


func _process(delta):
	var direction = 0
	if Input.is_action_pressed("left"):
		direction = -1
	elif Input.is_action_pressed("right"):
		direction = 1
	
	var movement = Vector2(direction * speed * delta, 0)
	
	position = position + movement
	
	if position.x < left_limit:
		position = Vector2(left_limit, position.y)
	elif position.x > right_limit:
		position = Vector2(right_limit, position.y)
