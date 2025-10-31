extends Camera3D


@export var car: Node3D
@export var height := 30.0
@export var look_height := 5.0

func _process(delta):
	if current:
		var pos = car.global_transform.origin
		global_transform.origin = Vector3(pos.x, pos.y + height, pos.z)
		look_at(pos + Vector3(0, look_height, 0), Vector3.FORWARD)
