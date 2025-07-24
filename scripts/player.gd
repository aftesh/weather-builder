extends CharacterBody2D

var speed = 100
var speedr = speed * 5
@onready var anim = $anim
@onready var cam = $Camera2d
@export var zoom_max = 5
@export var zoom_min = 1
@export var zoom_step = 0.5
func zoom():
	if Input.is_action_just_pressed("zoom plus") and cam.zoom < Vector2(zoom_max, zoom_max):
		cam.zoom += Vector2(zoom_step, zoom_step)
	if Input.is_action_just_pressed("zoom minus") and cam.zoom > Vector2(zoom_min, zoom_min):
		cam.zoom -= Vector2(zoom_step, zoom_step)

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
func _process(delta: float) -> void:
	zoom()
