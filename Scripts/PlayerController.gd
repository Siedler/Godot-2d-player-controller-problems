extends RigidBody2D

func _ready():
	self.set_fixed_process(true)

func _fixed_process(delta):
	var left = Input.is_action_pressed("left_pressed")
	var right = Input.is_action_pressed("right_pressed")
	var jump = Input.is_action_pressed("jump_pressed")
	
	var x = self.get_linear_velocity().x
	var y = self.get_linear_velocity().y
	
	if(left):
		x -= 25
	
	if(right):
		x += 25
	
	if(jump):
		y -= 50
	
	self.set_linear_velocity(Vector2(x,y))