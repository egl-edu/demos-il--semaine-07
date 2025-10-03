extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.get_last_mouse_velocity().length() < 1:
		$FlagBlueA.play("no_flag")
	pass


func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		print(event.velocity)
		if event.velocity.length() < 1:
			$FlagBlueA.play("no_flag")
		else:
			$FlagBlueA.play("wave_flag")
