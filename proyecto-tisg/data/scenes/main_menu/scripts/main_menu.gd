extends Node2D

func _ready():
	$background/background_animation.play("main")

func _on_config_button_pressed():
	$configuration.visible = !$configuration.visible
	$text.visible = !$text.visible
	if $text.visible == false:
		$configuration/papyrus/AnimationPlayer.play("papyrus")
		$configuration/conftext/conftext_animation.play("shake")
	else:
		$configuration/papyrus/AnimationPlayer.stop()
		$configuration/conftext/conftext_animation.stop()

func _on_background_audio_finished():
	$background_audio.play()
