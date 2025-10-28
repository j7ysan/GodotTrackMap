extends VehicleBody3D
@export var MAX_RPM = 1200
@export var MAX_TORQUE = 800
@export var TURN_SPEED = 1
@export var TURN_AMOUNT = 0.3
@export var BRAKE_AMOUNT = 20

func _ready():
	reset()

func _physics_process(delta):
	steering = move_toward(steering, Input.get_axis("right","left") * TURN_AMOUNT, delta * TURN_SPEED)
	
	var RPM = (abs($Wheel3.get_rpm()) + abs($Wheel4.get_rpm())) / 2.0
	var torque = Input.get_axis("down","up") * MAX_TORQUE * (1.0 - RPM / MAX_RPM)
	
	if Input.get_axis("down","up") > 0:
		if global_transform.basis.z.dot(linear_velocity) < -1:
			brake = BRAKE_AMOUNT
			engine_force = 0
		else:
			brake = 0
			engine_force = torque
	elif Input.get_axis("down","up") < 0:
		if global_transform.basis.z.dot(linear_velocity) > 1:
			brake = BRAKE_AMOUNT
			engine_force = 0
		else:
			brake = 0
			engine_force = torque
	else:
		brake = 0.25
		engine_force = 0
	
	if position.y < 80:
		reset()

func reset():
	rotation = Vector3.ZERO
	position = Vector3(250,105,65)

func _input(event):
	if Input.is_action_just_pressed("ui_accept"):
		reset()
