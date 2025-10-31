extends Area3D

const ROT_SPEED = 360 #degree of rotation per frame
@export var coin_counter : CanvasLayer 

func _process(delta):
	rotate_y(deg_to_rad(ROT_SPEED * delta))

func _on_body_entered(_body):
	Global.coins += 1
	coin_counter.get_node("CoinsLabel").text = str(Global.coins) + " / 30"
	set_collision_layer_value(3, false)
	set_collision_mask_value(1, false)
	#queue_free()
	hide()

func reset():
	set_collision_layer_value(3, true)
	set_collision_mask_value(1, true)
	show()
