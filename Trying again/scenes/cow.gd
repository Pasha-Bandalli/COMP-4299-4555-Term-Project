extends Node2D

var health : int = 100
var damage : int = 50

func take_damage(damage_amount):
	health -= damage_amount

	if health <= 0:
		queue_free()
		
func deal_damage(target):
	if target.has_method("take_damage"):
		target.take_damage(damage)
		
