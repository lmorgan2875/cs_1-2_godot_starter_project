extends Node

var _target : Vector2
var Speed = 350.0
var _facing = 0
var direction = _target

func _process (_delta):
	position = speed * direction * _delta
	if _facing == "up":
		direction = Vector2(0,-1)
		
	if _facing == "down":
		direction = Vector2(0,1)
		
	if _facing == "left":
		direction = Vector2(-1,0)
		
	if _facing == "right":
		direction = Vector2(1,0)
	
	
	
func set_direction(_target:Vector2):
	direction = (_target - position)
	
	
	
