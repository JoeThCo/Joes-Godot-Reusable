# I personally add to Godot as a Globals script


extends Node


var sfx_dict: Dictionary[String, AudioStream] = {
	"example" : preload("path/to/audio/.wav, .ogg, .mp3") as AudioStream,
}


func play_sfx(key: String) -> void:
	var sfx_audio_stream := sfx_dict[key]
	var sfx_player:= AudioStreamPlayer2D.new()
	sfx_player.stream = sfx_audio_stream
	sfx_player.bus = &"SFX"
	
	sfx_player.finished.connect(sfx_player.queue_free)
	get_tree().current_scene.add_child(sfx_player)
	sfx_player.play()
