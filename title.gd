extends Node2D
var main_scene = preload("res://world.tscn")


func _on_instructions_button_down() -> void:
	$CanvasLayer.visible = false
	$CanvasLayer2.visible = true



func _on_button_button_down() -> void:
	$CanvasLayer2.visible = false
	$CanvasLayer.visible = true


func _on_play_button_down() -> void:
	$CanvasLayer.visible = false
	var main = main_scene.instantiate()
	add_child(main)
