script rt_debug_create_state_warning 
	if ($rt_debug_dot_mode)
		CreateScreenElement \{Type = ContainerElement
			id = debug_state_warning_container
			parent = root_window
			Pos = (0.0, 0.0)}
		CreateScreenElement {
			Type = TextElement
			parent = debug_state_warning_container
			font = fontgrid_title_gh3
			Scale = (0.6)
			rgba = [255 200 200 255]
			text = "."
			id = debug_warning_text_1
			Pos = (1263.0, 3.0)
			just = [center center]
			rot_angle = 0
			z_priority = 10020
			Shadow
			shadow_offs = (3.0, 3.0)
			shadow_rgba [0 0 0 255]
		}
		CreateScreenElement {
			Type = TextElement
			parent = debug_state_warning_container
			font = fontgrid_title_gh3
			Scale = (0.6)
			rgba = [200 200 255 255]
			text = "."
			id = debug_warning_text_2
			Pos = (1270.0, 3.0)
			just = [center center]
			rot_angle = 0
			z_priority = 10020
			Shadow
			shadow_offs = (3.0, 3.0)
			shadow_rgba [0 0 0 255]
		}
		CreateScreenElement {
			Type = TextElement
			parent = debug_state_warning_container
			font = fontgrid_title_gh3
			Scale = (0.6)
			rgba = [200 255 200 255]
			text = "."
			id = debug_warning_text_3
			Pos = (1277.0, 3.0)
			just = [center center]
			rot_angle = 0
			z_priority = 10020
			Shadow
			shadow_offs = (3.0, 3.0)
			shadow_rgba [0 0 0 255]
		}
		debug_warning_text_1 :SetProps \{Hide}
		debug_warning_text_2 :SetProps \{Hide}
		debug_warning_text_3 :SetProps \{Hide}
	endif
	if ($rt_file_debug_enabled)
		GetGlobalTags \{arcade_audits}
		Change rt_debug_last_num_unfinished = (<arcade_total_plays> - <arcade_total_finished> - <arcade_total_test_in_game>)
	endif
endscript
