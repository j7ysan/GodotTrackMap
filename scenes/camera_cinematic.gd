extends Camera3D


@export var car: Node3D
@export var follow_distance := 12.0
@export var smoothing := 6.0

func _process(delta):
	if current:
		var target_pos = car.global_transform.origin \
			- car.global_transform.basis.z * follow_distance \
			+ Vector3(0, 4, 0)

		global_transform.origin = global_transform.origin.lerp(target_pos, delta * smoothing)
		look_at(car.global_transform.origin, Vector3.UP)
