extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var numberArray = Array()
	for i in range(10):
		numberArray.append(i)
	print(numberArray)
	var pc = get_node("PCMan")
	print("Get Node: ", pc.name)
	var scene = pc.get_parent()
	print("Get Parent: ", scene.name)
	var logo = scene.get_child(1)
	print("Get Other Child: ", logo.name)
	pc.play("Idle")
	var pc2 = get_node("PCMan2")
	pc2.play("Jump")
	var pc3 = get_node("PCMan3")
	pc3.play("Run")
	var pc4 = get_node("PCMan4")
	pc4.play("Shoot")
	var cat = get_node("NyanCat")
	cat.play("Shoot")
	#scene.get_tree().change_scene("res://Scene2.tscn")
	#print("Scene2 loaded")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
