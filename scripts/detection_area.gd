extends Node2D


signal body_entered(body: Node2D)

var rays: Array
var collider


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rays = get_children()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	for ray in rays:
		collider = ray.get_collider()
		if collider is Player:
			body_entered.emit(collider)
