extends Node2D

func _ready():
	$background/background_animation.play("main")


func _on_config_button_pressed():
	$configurations.visible = !$configurations.visible
	$text.visible = !$text.visible



func _on_background_audio_finished():
	$background_audio.play()

