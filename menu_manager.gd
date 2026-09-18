class_name MenuManager extends CanvasLayer


func display_menu(m_name: String) -> void:
	for m: Control in get_children():
		m.visible = m.name == m_name


func hide_all_menus() -> void:
	for m: Control in get_children():
		m.visible = false
