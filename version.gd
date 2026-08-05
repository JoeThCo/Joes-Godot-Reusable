extends RichTextLabel


func _ready() -> void:
	text = "V" + ProjectSettings.get_setting("application/config/version")
