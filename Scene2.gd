extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var dict = {"brainCellsLeft" : 2}
	print("Brain cells I have left: ", dict.brainCellsLeft)
	var pc = get_node("PCMan2")
	pc.play("Run")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
