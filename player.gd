extends RigidBody2D


func _physics_process(delta):
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_left", "ui_right")
	self.linear_velocity.x += input_direction.x * 10
	#velocity = input_direction * 400
	#move_and_slide() 

func _on_pickup_area_area_entered(area: Area2D) -> void:
	if area.is_in_group("banana") and $HeldBanana.visible == false:		
		#$HeldBanana.visible = true
		area.get_parent().queue_free()
		$"../Babies".spawn_banana()
