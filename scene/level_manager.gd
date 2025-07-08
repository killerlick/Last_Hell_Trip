extends Node2D

var playerScene = preload("res://scene/player.tscn")
var player : Player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	if(Global.player):
		player = Global.player
	else:
		player = playerScene.instantiate()	
		player.position = get_node("./playerPosition").position # Replace with function body.
		Global.player = player
	add_child(player)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
