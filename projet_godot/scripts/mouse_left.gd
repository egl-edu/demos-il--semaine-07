extends Sprite2D

# Détection avec process()
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("clic"):
		commencer_tween()


# Détecion avec _input(event)
#func _input(event: InputEvent) -> void:
	#if event is InputEventMouseButton:
		#if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			#commencer_tween()

func commencer_tween():
	var tween = create_tween()
	tween.set_trans(Tween.TRANS_CUBIC)
	tween.parallel().tween_property(self, "scale", Vector2(1,1), 0.5).from(Vector2(2,2))
	tween.parallel().tween_property(self, "rotation_degrees", 0, 0.5).from(randf_range(-45,45))
	tween.parallel().tween_property(self, "modulate", Color.WHITE, 0.5).from(Color.YELLOW)
	#tween.play()
	pass
