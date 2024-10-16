extends Node2D

@onready var leaf1 = $leaf1/Sprite2D
@onready var leaf2 = $leaf2/Sprite2D
@onready var leaf3 = $leaf3/Sprite2D
@onready var leaf4 = $leaf4/Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	texture_set(leaf1)
	texture_set(leaf2)
	texture_set(leaf3)
	texture_set(leaf4)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func texture_set(leaf):
	var typeofleaf = randi_range(1,3)
	var caminho_textura = "res://assets/leaf" + str(typeofleaf) + ".png"
	leaf.texture = load(caminho_textura)
	
