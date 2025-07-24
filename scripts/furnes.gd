extends StaticBody2D



var is_smelting = false 
@onready var anim = $anim
@onready var area = $Area2D

func smelting_anim():
	if is_smelting:
		anim.play("work")
	else:
		anim.play("idle")

func _process(delta: float) -> void:
#	smelting()
	smelting_anim()

func _on_area_2d_body_entered(body: Node2D) -> void:
	is_smelting = true

func _on_area_2d_body_exited(body: Node2D) -> void:
	is_smelting = false
