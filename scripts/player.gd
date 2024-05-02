extends CharacterBody2D
@export var speed:int



func _process(_delta):
	#Animation and movement
	if Dialogic.VAR.movement == false and Input.is_anything_pressed():
		velocity = Vector2.ZERO
	else:
		if Input.is_action_pressed("down"):
			$AnimatedSprite2D.play("down")
			velocity = Vector2.DOWN * speed
		elif Input.is_action_pressed("up"):
			$AnimatedSprite2D.play("up")
			velocity = Vector2.UP * speed
		elif Input.is_action_pressed("left"):
			$AnimatedSprite2D.play("right")
			$AnimatedSprite2D.flip_h= true
			velocity = Vector2.LEFT * speed
		elif Input.is_action_pressed("right"):
			$AnimatedSprite2D.flip_h= false
			$AnimatedSprite2D.play("right")
			velocity = Vector2.RIGHT * speed
		else:
			velocity = Vector2.ZERO
			$AnimatedSprite2D.stop()
			$AnimatedSprite2D.set_frame_and_progress(0,0)
	move_and_slide()

func body():
	pass

