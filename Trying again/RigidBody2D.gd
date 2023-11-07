extends RigidBody2D

var health = 100
var target = null
var speed = 100  # Adjust the speed as needed
var damage = 50

func _process(delta):
	if target:
		var direction = (target.global_position - global_position).normalized()
		var velocity = direction * speed * delta
		move_and_collide(velocity)

func _on_detection_area_area_entered(area):
	if area.has_method("take_damage"):
		target = area
		deal_damage(target)

func _on_detection_area_area_exited(area):
	if area == target:
		target = null

func take_damage(damage_amount):
	health -= damage_amount
	if health <= 0:
		print("dead")
	# Handle cow death logic here

func deal_damage(target):
	if target.has_method("take_damage"):
		print("would have taken " + damage)
