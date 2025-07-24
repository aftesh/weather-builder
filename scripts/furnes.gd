extends StaticBody2D

var is_smelting = false 
@onready var anim = $anim

func smelting():
	if is_smelting:
		anim.play("work")
	else:
		anim.play("idle")
