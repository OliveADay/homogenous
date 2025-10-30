extends Node2D

var rng: RandomNumberGenerator = RandomNumberGenerator.new()
var friend_ref = preload("res://friend.tscn")
var base_ref = preload("res://basegui.tscn")
const Y_MIN = 14
const Y_MAX = 345
const X_MIN = 15
const X_MAX = 625
var gui_num = 2

func spawn():
	var i = 0
	while(i < gui_num):
		i+=1
		var pos = Vector2(rng.randi_range(X_MIN, X_MAX), rng.randi_range(Y_MIN,Y_MAX))
		#TODO
		#get spawning done, and have last one be friend
			
	
