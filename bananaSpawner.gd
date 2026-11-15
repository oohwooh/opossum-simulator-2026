extends Node2D

@export var banana_scene: PackedScene
@export var pbanana_scene: PackedScene

func _on_timer_timeout() -> void:
	if randi_range(1, 10) == 5:
		var pbanana: Node2D = pbanana_scene.instantiate()
		add_child(pbanana)
		pbanana.position.x = randi_range(50, 400)
		pbanana.position.y = -100
	
	var banana: Node2D = banana_scene.instantiate()
	add_child(banana)
	banana.position.x = randi_range(50, 400)
	banana.position.y = -100
