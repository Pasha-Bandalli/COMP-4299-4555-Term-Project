extends AnimatedSprite2D

var health = 100

func take_damage(damage_amount):
	health -= damage_amount
	if health <= 0:
		queue_free()  # Remove the cow from the scene when health reaches zero
