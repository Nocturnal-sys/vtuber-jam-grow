class_name Enemy
extends AnimatableBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


#Called when the player enters the DetectionArea of the enemy.
func detect_player() -> void:
	print("Player detected")


func _on_detection_area_body_entered(body: Node2D) -> void:
	if body is Player:
		detect_player()
