extends CharacterBody2D

var initial_speed = 3.0

func _ready():
	velocity = Vector2(0,initial_speed*randf()).rotated(2*PI*randf())

func _physics_process(_delta):
	move_and_slide()
	position.x = wrapf(position.x, 0, Global.VP.x)
	position.y = wrapf(position.y, 0, Global.VP.y)
