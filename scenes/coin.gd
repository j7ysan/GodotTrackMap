extends Area3D

const ROT_SPEED = 2 #degree of rotation per frame
@export var coin_counter : CanvasLayer 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotate_y(deg_to_rad(ROT_SPEED))


func _on_body_entered(body: Node3D) -> void:
	Global.coins += 1
	coin_counter.get_node("CoinsLabel").text = str(Global.coins)
	set_collision_layer_value(3, false)
	set_collision_mask_value(1, false)
	queue_free()
