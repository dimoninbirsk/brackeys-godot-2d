extends Node2D

enum Direction {LEFT =-1, RIGHT = 1}

@export var speed = 60
@export var direction : Direction = Direction.LEFT
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func  _process(delta: float) -> void:
	if(ray_cast_right.is_colliding() ):
		direction = Direction.LEFT
		animated_sprite_2d.flip_h = true
	if(ray_cast_left.is_colliding() ):
		direction = Direction.RIGHT
		animated_sprite_2d.flip_h = false
	position.x+= direction * speed * delta
