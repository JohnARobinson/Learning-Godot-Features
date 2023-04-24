extends Node

func _ready():

	var SantaWalk = get_node(".");
	
	
func _process(delta):

	var SantaWalk = get_node(".");
	#get_node("SqueakWalk").play()
	#$SqueakWalk.play()
	#$AudioStreamPlayer.playing = true

		
	
	if Input.is_key_pressed(KEY_A):
		SantaWalk.animation = "SantaWalk"
		self.position.x-=1
		SantaWalk.flip_h = true
		#get_node(".").playing = true;
		if not $SqueakWalk.is_playing():
			SantaWalk.get_node("SqueakWalk").play()
		
	if Input.is_key_pressed(KEY_D):
		SantaWalk.animation = "SantaWalk"
		self.position.x+=1
		SantaWalk.flip_h = false
		#get_node(".").playing = true;
		if not $SqueakWalk.is_playing():
			SantaWalk.get_node("SqueakWalk").play()
	if Input.is_key_pressed(KEY_W):

		SantaWalk.animation = "SantaWalk"
		self.position.y-=1
		#get_node(".").playing = true;
		if not $SqueakWalk.is_playing():
			SantaWalk.get_node("SqueakWalk").play()
	if Input.is_key_pressed(KEY_S):
		SantaWalk.animation = "SantaWalk"
		self.position.y+=1
		#get_node(".").playing = true;
		if not $SqueakWalk.is_playing():
			SantaWalk.get_node("SqueakWalk").play()
		
	if not Input.is_key_pressed(KEY_A):
		if not Input.is_key_pressed(KEY_W):
			if not Input.is_key_pressed(KEY_D):
				if not Input.is_key_pressed(KEY_S):
					SantaWalk.animation = "SantaIdle"
					SantaWalk.get_node("SqueakWalk").stop()
					
