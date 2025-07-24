extends CharacterBody2D

var speed = 100
var speedr = speed * 5


@onready var anim = $"player anim"
func walk():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if Input.is_key_pressed(KEY_SHIFT):
		velocity = input_direction * speedr
	else:
		velocity = input_direction * speed
	move_and_slide()
	if input_direction == Vector2(0, 0):
		anim.play("idle")
	else:
		anim.play("walk")
func _physics_process(delta):
	walk()
