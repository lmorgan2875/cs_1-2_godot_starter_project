extends Node2D
const MyProjectile = preload("res://scenes/enemy_projectile.tscn")

# TODO: Add variables for turret state
# Track if player is in range, projectile scene, etc.
# Look at "Boolean Variables and State Tracking" documentation

# TODO: Add projectile scene variable
# Look at "Reusing Projectile Systems" documentation

func _ready():
	# TODO: Set up shooting timer
	# Look at "Working with Timers" documentation
	pass

func _on_detection_area_body_entered(body):
	# TODO: Check if the body is the player
	# Update player detection state
	# Look at "Boolean Variables and State Tracking" documentation
	
	if body.name == "player":
		print ("Turret Fired")
		#create projectile
		#set global path
		#child to a scene?
		#call projectile.set_direction() 
		
		
		self.queue_free()
	
	pass

func _on_detection_area_body_exited(_body):
	# TODO: Check if the body is the player  
	# Update player detection state
	# Look at "Boolean Variables and State Tracking" documentation

	pass
	
	

func _on_shooting_timer_timeout():
	# TODO: Check if player is in range
	# If yes, shoot at player
	# Look at documentation for shooting logic

	pass

	#do something every 2 secounds
	

func shoot_at_player(_body):
	# TODO: Get player's current position
	# Calculate direction from turret to player
	# Create and launch projectile
	# Look at "Getting Object Positions", "Direction Calculation", 
	# and "Reusing Projectile Systems" documentation
	
	var new_instance = MyProjectile.instantiate()
	get_parent().add_child(new_instance)
	new_instance.global_position = position
	
	
	
	pass
