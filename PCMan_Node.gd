extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _input(event):
	var pcman = get_node(".")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var pcman = get_node(".")
	
	if Input.is_key_pressed(KEY_L):
		pcman.flip_h = false
		pcman.position.x += 300*delta
		pcman.animation = "Run"
		if(pcman.frame == 0 || pcman.frame == 2):
			if(pcman.get_node("StepNoise").playing == false):
				pcman.get_node("StepNoise").play()
		if(pcman.frame == 1 || pcman.frame == 3):
			pcman.get_node("StepNoise").playing = false
		
	if Input.is_key_pressed(KEY_J):
		pcman.flip_h = true
		pcman.position.x -= 300*delta
		pcman.animation = "Run"
		if(pcman.frame == 0 || pcman.frame == 2):
			if(pcman.get_node("StepNoise").playing == false):
				pcman.get_node("StepNoise").play()
		if(pcman.frame == 1 || pcman.frame == 3):
			pcman.get_node("StepNoise").playing = false
		
	if Input.is_key_pressed(KEY_I):
		pcman.position.y -= 300*delta
		pcman.animation = "Run"
		if(pcman.frame == 0 || pcman.frame == 2):
			if(pcman.get_node("StepNoise").playing == false):
				pcman.get_node("StepNoise").play()
		if(pcman.frame == 1 || pcman.frame == 3):
			pcman.get_node("StepNoise").playing = false
		
	if Input.is_key_pressed(KEY_K):
		pcman.position.y += 300*delta
		pcman.animation = "Run"
		if(pcman.frame == 0 || pcman.frame == 2):
			if(pcman.get_node("StepNoise").playing == false):
				pcman.get_node("StepNoise").play()
		if(pcman.frame == 1 || pcman.frame == 3):
			pcman.get_node("StepNoise").playing = false
	
	if(!Input.is_key_pressed(KEY_J)):
		if(!Input.is_key_pressed(KEY_K)):
			if(!Input.is_key_pressed(KEY_L)):
				if(!Input.is_key_pressed(KEY_I)):
					pcman.animation = "Idle"

