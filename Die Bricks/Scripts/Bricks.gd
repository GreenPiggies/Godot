extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	for brick in get_children():
		brick.add_to_group("Bricks")

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
