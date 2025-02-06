arcadeplay_win_song_fs = {
	create = create_newspaper_menu
	Destroy = destroy_newspaper_menu
	Name = "arcadeplay_win_song_fs"
	actions = [
		{
			action = continue
			flow_state = arcadeplay_toprockers_fs
		}
		{
			action = select_detailed_stats
			flow_state = arcadeplay_detailed_stats_fs
		}
		{
			action = quit
			func = exit_arcadeplay
			func_params = {
				kill_gem = 0
			}
			flow_state = main_menu_fs
		}
	]
}

script arcadeplay_cleanup_autosave 
endscript
arcadeplay_continue_fs = {
	create = create_continue_menu
	Destroy = destroy_continue_menu
	Name = "arcadeplay_continue_fs"
	actions = [
		{
			action = continue
			flow_state = main_menu_fs
		}
		{
			action = quit
			flow_state = main_menu_fs
		}
	]
}
