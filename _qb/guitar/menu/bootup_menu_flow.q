bootup_do_memcard_sequence_fs = {
	create = memcard_sequence_begin_bootup
	create_params = {
		StorageSelectorForce = 1
	}
	Destroy = memcard_sequence_cleanup_generic
	actions = [
		{
			action = memcard_sequence_save_success
			flow_state = main_menu_fs
		}
		{
			action = memcard_sequence_save_failed
			flow_state = main_menu_fs
		}
		{
			action = memcard_sequence_load_success
			flow_state = main_menu_fs
		}
		{
			action = memcard_sequence_load_failed
			flow_state = main_menu_fs
		}
	]
}
