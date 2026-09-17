extends Area2D

var finish: bool = false

func _ready() -> void:
	body_entered.connect(_on_body_entered)
	$"../CharacterBody2D/Label".visible = false

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and not finish:
		finished()

func activate_flag() -> void:
	finish = true

func finished():
	$"../AudioStreamPlayer".play()
	$"../CharacterBody2D/Label".visible = true
