extends KinematicBody2D

const BALL_SCENE = preload("res://Entities/Ball.tscn")

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
func _ready():
	set_physics_process(true)


func _physics_process(delta):
	var y = position.y
	var mouse_x = get_viewport().get_mouse_position().x
	set_position(Vector2(mouse_x, y))
	
func _input(event):
	if event.is_pressed():
		var ball = BALL_SCENE.instance()
		ball.set_position(get_position() - Vector2(0, 16))
		get_tree().root.add_child(ball)