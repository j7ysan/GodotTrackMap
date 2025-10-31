extends Area3D

const ROT_SPEED = 2 #degree of rotation per frame
@export var coin_counter : CanvasLayer 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	rotate_y(deg_to_rad(ROT_SPEED))


func _on_body_entered(_body):
	Global.coins += 1
	coin_counter.get_node("CoinsLabel").text = str(Global.coins)
	set_collision_layer_value(3, false)
	set_collision_mask_value(1, false)
	queue_free()
