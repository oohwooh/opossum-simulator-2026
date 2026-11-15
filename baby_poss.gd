extends RigidBody2D

@export var mouth_top: Node2D
@export var mouth_bottom: Node2D

var elapsed = 0
var mouth_speed = 0
var top_mult = 0
var bottom_mult = 0
var self_rotate_mult = 0

func _init() -> void:
	mouth_speed = randi_range(15, 40)
	top_mult = randi_range(3, 15)
	bottom_mult = randi_range(4, 12)
	self_rotate_mult = randi_range(2, 9)	

func _physics_process(delta: float) -> void:
	elapsed += delta * 30
	mouth_top.rotation_degrees = sin(elapsed) * 10
	mouth_bottom.rotation_degrees = sin(elapsed) * -bottom_mult
	if self.rotation_degrees > -30:
		self.rotation_degrees -= 0.5
	else:
		self.rotation_degrees += 0.5
	
	if randi_range(1, 20) == 1:
		self.rotation_degrees += randf_range(-10, 10)
		apply_impulse(Vector2(randf_range(-2, 2), randf_range(10, 20)))
		apply_torque(randf_range(-10, 10))
	self.rotation_degrees += randf_range(-1, 1)


#func _on_body_entered(body: Node) -> void:
	#if body.is_in_group("foodBanana"):
		#
