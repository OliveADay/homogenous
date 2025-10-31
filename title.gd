extends Node2D
var main_scene = preload("res://world.tscn")
var scoreFilePath = "user://score.cfg"

func _on_instructions_button_down() -> void:
	$CanvasLayer.visible = false
	$CanvasLayer2.visible = true
	
func _ready() -> void:
	$CanvasLayer/highscore.text = "highscore: "+str(loadBScore())



func _on_button_button_down() -> void:
	$CanvasLayer2.visible = false
	$CanvasLayer.visible = true


func _on_play_button_down() -> void:
	$CanvasLayer.visible = false
	var main = main_scene.instantiate()
	add_child(main)
	
func loadBScore():
	var config = ConfigFile.new()
	var error = config.load(scoreFilePath)
	if error != OK:
		return 0
	return config.get_value("main","best_score")
