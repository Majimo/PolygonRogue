extends KinematicBody2D

const SPEED = 300

var direction = Vector2.ZERO


func _ready():
	pass

func _process(delta):
	move_and_slide(direction * SPEED)

func _input(_event: InputEvent):
	direction.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	direction.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
