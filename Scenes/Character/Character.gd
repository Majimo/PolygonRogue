extends KinematicBody2D

const SPEED = 300

var direction = Vector2.ZERO


func _ready():
	pass

func _process(delta):
	move_and_slide(direction * SPEED)

func _input(event: InputEvent):
	direction.x = int(event.is_action_pressed("ui_right")) - int(event.is_action_pressed("ui_left"))
	direction.y = int(event.is_action_pressed("ui_down")) - int(event.is_action_pressed("ui_up"))
