extends Node2D
@export var rotation_speed : float
@export var vertical_eccentricity : float
@export var horizonal_eccentricity : float
var time : int = 0
var initial_position

# Called when the node enters the scene tree for the first time.
func _ready():
	initial_position = self.position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += 1
	self.position.x = initial_position.x + cos(time *  rotation_speed) * horizonal_eccentricity
	self.position.y = initial_position.y + sin(time *  rotation_speed) * vertical_eccentricity
	pass
