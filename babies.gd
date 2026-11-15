extends Area2D

@export var baby_scene: PackedScene
@export var banana_scene: PackedScene
@export var n_babies: int = 3
@export var spawn_shape: CollisionShape2D

func spawn_baby():
	var baby: Node2D = baby_scene.instantiate()
	add_child(baby)
	var spawn_area = spawn_shape.shape.get_rect()
		
	baby.position.x = randi_range(spawn_area.position.x, spawn_area.end.x)
	baby.position.y = randi_range(spawn_area.position.y, spawn_area.end.y)

func spawn_banana():
	var banana: Node2D = banana_scene.instantiate()
	add_child(banana)
	var spawn_area = spawn_shape.shape.get_rect()
		
	banana.position.x = randi_range(spawn_area.position.x, spawn_area.end.x)
	banana.position.y = randi_range(spawn_area.position.y, spawn_area.end.y)


func _ready() -> void:
	for i in range(n_babies):
		spawn_baby()
		
