extends VehicleBody3D

func _physics_process(delta):
	steering = move_toward(steering, Input.get_axis("right","left") * 0.6, delta * 1)
	if Input.get_axis("down","up") > 0:
		if global_transform.basis.z.dot(linear_velocity) < -1:
			brake = 3
			engine_force = 0
		else:
			brake = 0
			engine_force = 150
	elif Input.get_axis("down","up") < 0:
		if global_transform.basis.z.dot(linear_velocity) > 1:
			brake = 3
			engine_force = 0
		else:
			brake = 0
			engine_force = -150
	else:
		brake = 0
		engine_force = 0

func _input(event):
	if Input.is_action_just_pressed("ui_accept"):
		print("as")
		rotation = Vector3(0,0,0)
