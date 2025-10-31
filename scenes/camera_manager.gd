extends Node

@export var car: Node3D
@export var camera_follow: Camera3D
@export var camera_topdown: Camera3D
@export var camera_cinematic: Camera3D
@export var camera_orbit: Camera3D

var cameras := []
var index := 0

func _ready():
	cameras = [camera_follow, camera_topdown, camera_cinematic, camera_orbit]
	cameras[index].current = true

func _input(event):
	if event.is_action_pressed("switch_camera"):
		cameras[index].current = false
		index = (index + 1) % cameras.size()
		switch_to_camera(cameras[index])

func switch_to_camera(new_cam: Camera3D):
	var from = cameras[index]
	from.current = false

	# smoothing out trhe transition effect
	var tween = create_tween()
	tween.tween_property(new_cam, "fov", from.fov, 0.1)

	new_cam.current = true
