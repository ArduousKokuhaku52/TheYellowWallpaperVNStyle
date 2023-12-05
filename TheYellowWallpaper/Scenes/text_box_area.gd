extends CanvasLayer

signal change_bg

var currnum = 1
var file = 'res://Assets/lines/'

# Called when the node enters the scene tree for the first time.
func _ready():
	var content = load_file(file + '' + str(currnum) + '.txt')
	$Control/Panel/CurrentText.text = content
	currnum += 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("primary action") and currnum < 26:
		var content = load_file(file + '' + str(currnum) + '.txt')
		$Control/Panel/CurrentText.text = content
		currnum += 1
		match currnum:
			7:
				change_bg.emit()
			9:
				change_bg.emit()
			11:
				change_bg.emit()
			13:
				change_bg.emit()
			15:
				change_bg.emit()
			17:
				change_bg.emit()
			19:
				change_bg.emit()
			21:
				change_bg.emit()
			23: 
				change_bg.emit()
	

func load_file(filename):
	var f = FileAccess.open(filename, FileAccess.READ)
	var c = f.get_as_text()
	return c

