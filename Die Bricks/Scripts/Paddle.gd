extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_physics_process(true)
	pass

func _physics_process(delta):
	var y = position.y
	var mouse_x = get_viewport().get_mouse_position().x
	set_position(Vector2(mouse_x, y))