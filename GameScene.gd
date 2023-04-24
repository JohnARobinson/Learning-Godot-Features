extends Node2D

onready var Barrel = preload("res://Barrel_IR.tscn")
onready var CherryTrees = preload("res://Trees_IR.tscn")
onready var Sign = preload("res://Sign_IR.tscn")
onready var Monster = preload("res://MonsterMan_IR.tscn")

onready var Box = preload("res://Box.tscn")
onready var Trashcan = preload("res://Trash.tscn")
onready var Bank = preload("res://Bank.tscn")
onready var Santa = preload("res://SantaWalkJR.tscn")



# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	var newbarrel = Barrel.instance()
	add_child(newbarrel)
	var newtrees = CherryTrees.instance()
	add_child(newtrees)
	var newsign = Sign.instance()
	add_child(newsign)
	var monsterman = Monster.instance()
	add_child(monsterman)
	
	var SantaWalk = Santa.instance()
	add_child(SantaWalk)
	var newBox = Box.instance()
	add_child(newBox)
	var newTrash = Trashcan.instance()
	add_child(newTrash)
	var newBank = Bank.instance()
	add_child(newBank)
	
	newtrees.position = Vector2(250, 200)
	newbarrel.position = Vector2(425, 230)
	newsign.position = Vector2(375, 235)
	monsterman.position = Vector2(200, 275)
	monsterman.animation = "idle"
	monsterman.playing = true
	
	newBox.position = Vector2(550, 450)
	newTrash.position = Vector2(640, 410)
	newBank.position = Vector2(640, 530)
	SantaWalk.position = Vector2(500, 500)
	SantaWalk.playing = true
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
