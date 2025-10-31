extends Node2D

var rng: RandomNumberGenerator = RandomNumberGenerator.new()
var friend_ref = preload("res://friend.tscn")
var base_ref = preload("res://basegui.tscn")
const Y_MIN = 14
const Y_MAX = 345
const X_MIN = 15
const X_MAX = 625
var gui_num = 2
var guis = []
var count = 0

func spawn():
	for gui in guis:
		gui.queue_free()
	guis = []
	var i = 0
	if(gui_num > 2):
		count+=1
		$CanvasLayer/Label.text = "score: "+str(count)
	while(i < gui_num):
		i+=1
		var pos = Vector2(rng.randi_range(X_MIN, X_MAX), rng.randi_range(Y_MIN,Y_MAX))
		if(i == gui_num):
			var fren = friend_ref.instantiate()
			add_child(fren)
			fren.position = pos
			fren.clicked_on.connect(spawn)
			guis.append(fren)
			print("fren spawned")
		else:
			var gui = base_ref.instantiate()
			add_child(gui)
			gui.position = pos
			guis.append(gui)
	gui_num+=1
			
func _ready() -> void:
	spawn()
			
	
