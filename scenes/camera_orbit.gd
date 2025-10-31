extends Camera3D


@export var car: Node3D
@export var distance := 10.0
@export var sensitivity := 0.005
var yaw := 0.0
var pitch := -0.3

func _process(delta):
	if current:
		# Look at and move around car
		var offset = Vector3(
			distance * cos(yaw) * cos(pitch),
			distance * sin(pitch),
			distance * sin(yaw) * cos(pitch)
		)
		global_transform.origin = car.global_transform.origin + offset
		look_at(car.global_transform.origin, Vector3.UP)

func _input(event):
	if not current: return
	
	if event is InputEventMouseMotion and Input.is_action_pressed("orbit_rotate"):
		yaw -= event.relative.x * sensitivity
		pitch -= event.relative.y * sensitivity
		pitch = clamp(pitch, -1.2, 0.3)

	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_WHEEL_UP:
			distance = max(5, distance - 1)
		elif event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
			distance = min(50, distance + 1)
