extends Sprite2D

var speed = 100
var player_state = "idle"
var velocity = Vector2(0, 0)  

func _physics_process(delta):
	var direction = Input.get_vector("left", "right", "up", "down")

	if direction.length() == 0:
		player_state = "idle"
	else:
		player_state = "walking"

	velocity = direction * speed
	position += velocity * delta

	play_anim(direction)

func play_anim(dir):
	if player_state == "idle":
		$AnimatedSprite2D.play("idle")
	else: 
		$AnimatedSprite2D.stop()
