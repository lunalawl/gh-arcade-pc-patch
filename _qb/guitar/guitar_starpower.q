showing_raise_axe = 0

script show_coop_raise_axe_for_starpower 
	if ($<player_status>.star_power_used = 1 ||
			$is_attract_mode = 1 || $showing_raise_axe = 1 || $Cheat_PerformanceMode = 1 || $playing_song = 0)
		return
	endif
	Change \{showing_raise_axe = 1}
	ExtendCrc coop_raise_axe ($<player_status>.text) out = id
	ExtendCrc coop_raise_axe_cont ($<player_status>.text) out = id_cont
	if ($<player_status>.Player = 1)
		original_pos = (($hud_screen_elements [10].Pos) - (225.0, 60.0))
		original_pos_cont = (($hud_screen_elements [10].Pos) - (225.0, 30.0))
	else
		original_pos = (($hud_screen_elements [10].Pos) + (225.0, -60.0))
		original_pos_cont = (($hud_screen_elements [10].Pos) + (225.0, -30.0))
	endif
	base_scale = 0.7
	base_scale_cont = 1
	if ScreenElementExists id = <id>
		DoScreenElementMorph {
			id = <id>
			Pos = <original_pos>
			Scale = 0
			alpha = 1
		}
	endif
	if ScreenElementExists id = <id_cont>
		DoScreenElementMorph {
			id = <id_cont>
			Pos = <original_pos_cont>
			Scale = 0
			alpha = 1
		}
	endif
	if ScreenElementExists id = <id>
		DoScreenElementMorph id = <id> Scale = <base_scale> time = 0.2
	endif
	if ScreenElementExists id = <id_cont>
		DoScreenElementMorph id = <id_cont> Scale = <base_scale_cont> time = 0.2
	endif
	Wait \{0.2
		Seconds}
	if NOT ScreenElementExists id = <id>
		Change \{showing_raise_axe = 0}
		return
	endif
	rotation = 4
	begin
	<rotation> = (<rotation> * -1)
	if ScreenElementExists id = <id>
		DoScreenElementMorph {
			id = <id>
			rot_angle = <rotation>
			time = 0.1
		}
	endif
	if ScreenElementExists id = <id_cont>
		DoScreenElementMorph {
			id = <id_cont>
			rot_angle = <rotation>
			time = 0.1
		}
	endif
	Wait \{0.13
		Seconds}
	if NOT ScreenElementExists id = <id>
		Change \{showing_raise_axe = 0}
		return
	endif
	repeat 8
	if ScreenElementExists id = <id>
		DoScreenElementMorph id = <id> rot_angle = 0
	endif
	if ScreenElementExists id = <id_cont>
		DoScreenElementMorph id = <id_cont> rot_angle = 0
	endif
	if ScreenElementExists id = <id>
		DoScreenElementMorph {
			id = <id>
			Pos = (<original_pos> - (0.0, 400.0))
			Scale = (<base_scale> * 0.5)
			time = 0.35000002
		}
	endif
	if ScreenElementExists id = <id_cont>
		DoScreenElementMorph {
			id = <id_cont>
			Pos = (<original_pos_cont> - (0.0, 400.0))
			Scale = (<base_scale_cont> * 0.5)
			time = 0.35000002
		}
	endif
	Change \{showing_raise_axe = 0}
endscript
