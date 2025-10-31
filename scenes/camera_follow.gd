extends Camera3D

@export var car: VehicleBody3D

#  speed FOV Settings 
@export var base_fov: float = 70.0
@export var max_fov: float = 95.0
@export var speed_fov_factor: float = 0.12

#  turn Tilt Settings 
@export var tilt_amount: float = 8.0
@export var tilt_smooth: float = 3.0

# camera Shake Settings 
var shake_amount: float = 0.0
@export var shake_decay: float = 5.0

func _process(delta):
	if car == null:
		return
		
	var speed = car.linear_velocity.length()
	
	#speed FOV
	var target_fov = clamp(base_fov + speed * speed_fov_factor, base_fov, max_fov)
	fov = lerp(fov, target_fov, delta * 4.0)
	
	#tilting on Turns
	var target_tilt = clamp(car.angular_velocity.y * tilt_amount, -tilt_amount, tilt_amount)
	rotation_degrees.z = lerp(rotation_degrees.z, target_tilt, delta * tilt_smooth)
	
	# camera Shake
	if shake_amount > 0.01:
		var offset = Vector3(
			randf_range(-shake_amount, shake_amount),
			randf_range(-shake_amount, shake_amount),
			randf_range(-shake_amount, shake_amount)
		)
		global_transform.origin += offset
		shake_amount = lerp(shake_amount, 0.0, delta * shake_decay)

# this will be called from the  car script on impact or maybe drfitinhg
func apply_shake(intensity: float):
	shake_amount = max(shake_amount, intensity)
