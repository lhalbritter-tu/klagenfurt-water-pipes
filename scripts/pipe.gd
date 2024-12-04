extends Node

@export var rotate_by_degrees = 90
@export var rigidbody: RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass	

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT :
			print("Left mouse button")
			rotate_right()
		if event.button_index == MOUSE_BUTTON_RIGHT :
			print("Right mouse button")
			rotate_left()

func rotate_right():
	rigidbody.rotate(deg_to_rad(rotate_by_degrees))
	
func rotate_left():
	rigidbody.rotate(deg_to_rad(-rotate_by_degrees))
