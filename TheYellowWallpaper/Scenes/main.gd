extends Node2D

var currbg = 1
var bg1 = preload("res://Scenes/bg1.tscn")
var bg2 = preload("res://Scenes/bg2.tscn")
var bg3 = preload("res://Scenes/bg3.tscn")
var bg4 = preload("res://Scenes/bg4.tscn")
var bg5 = preload("res://Scenes/bg5.tscn")
var bg6 = preload("res://Scenes/bg6.tscn")
var bg7 = preload("res://Scenes/bg7.tscn")
var bg8 = preload("res://Scenes/bg8.tscn")
var bg9 = preload("res://Scenes/bg9.tscn")
var bg10 = preload("res://Scenes/bg10.tscn")

func _ready():
	var bg = bg1.instantiate()
	$Background.add_child(bg)

func _on_canvas_layer_change_bg():
	match currbg:
		1:
			var bg = bg2.instantiate()
			$Background.get_child(0).queue_free()
			$Background.add_child(bg)
		2:
			var bg = bg3.instantiate()
			$Background.get_child(0).queue_free()
			$Background.add_child(bg)
		3:
			var bg = bg4.instantiate()
			$Background.get_child(0).queue_free()
			$Background.add_child(bg)
		4:
			var bg = bg5.instantiate()
			$Background.get_child(0).queue_free()
			$Background.add_child(bg)
		5:
			var bg = bg6.instantiate()
			$Background.get_child(0).queue_free()
			$Background.add_child(bg)
		6:
			var bg = bg7.instantiate()
			$Background.get_child(0).queue_free()
			$Background.add_child(bg)
		7:
			var bg = bg8.instantiate()
			$Background.get_child(0).queue_free()
			$Background.add_child(bg)
		8:
			var bg = bg9.instantiate()
			$Background.get_child(0).queue_free()
			$Background.add_child(bg)
		9:
			var bg = bg10.instantiate()
			$Background.get_child(0).queue_free()
			$Background.add_child(bg)
	
	currbg += 1
