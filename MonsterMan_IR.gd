extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _input(event):
	var me = get_node(".")
	
	if(event.is_action_released("ui_up") || event.is_action_released("ui_down")):
		me.animation = "idle"
	
	if(event.is_action_released("ui_left") || event.is_action_released("ui_right")):
		me.animation = "idle"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var me = get_node(".")
	
	if Input.is_action_pressed("ui_right"):
		me.flip_h = false
		me.position.x += 100*delta
		me.animation = "walk"
		if(me.frame == 4):
			me.get_node("plopnoise").play()
		
	if Input.is_action_pressed("ui_left"):
		me.flip_h = true
		me.position.x -= 100*delta
		me.animation = "walk"
		if(me.frame == 4):
			me.get_node("plopnoise").play()
		
	if Input.is_action_pressed("ui_up"):
		me.position.y -= 100*delta
		me.animation = "walk"
		if(me.frame == 4):
			me.get_node("plopnoise").play()
		
	if Input.is_action_pressed("ui_down"):
		me.position.y += 100*delta
		me.animation = "walk"
		if(me.frame == 4):
			me.get_node("plopnoise").play()
	
	
