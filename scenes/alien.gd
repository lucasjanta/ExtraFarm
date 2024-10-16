extends CharacterBody2D

const SPEED = 300.0
@onready var anim = $AnimatedSprite2D

func _physics_process(delta):

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var x_direction = Input.get_axis("left", "right")
	var y_direction = Input.get_axis("up", "down")
	
	if x_direction:
		velocity.x = x_direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if y_direction:
		velocity.y = y_direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
	update_animation()

func update_animation():
	if Input.is_action_pressed("left"):
		anim.play("walk_left")
	if Input.is_action_pressed("up"):
		anim.play("walk_up")
	if Input.is_action_pressed("right"):
		anim.play("walk_right")
	if Input.is_action_pressed("down"):
		anim.play("walk_down")
	if !Input.is_anything_pressed():
		anim.play("idle")
