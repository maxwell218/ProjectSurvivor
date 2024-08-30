/// @description Initializing Game Controller
enum INNER_STATE {
	ENTER,
	UPDATE,
	LEAVE,
}

randomize();

#region Game Variables

// Debug & Version
// First number for huge changes
// Second new changes for the same version number
// Third number for hotfixes
version_number = "v0.0.1";
global.debug = true;

surface_resize(application_surface, view_wport[0], view_hport[0]);

#endregion

room_goto(rm_level_01);

#region Delta time

global.target_framerate = 60;
global.target_delta = 1/global.target_framerate;
global.actual_delta = delta_time/1000000;
global.delta_multiplier = global.actual_delta/global.target_delta;
global.time = 0;

#endregion

#region Macros

// #macro EMPTY_TILE_ID 13
#macro DELTA global.delta_multiplier
#macro ALARM_INACTIVE -100
#macro MIN_DELTA_TIME_SUPPORTED (1 / 130)
#macro MAX_DELTA_TIME_SUPPORTED (1 / 9)
#macro EXIT_IF_FPS_NOT_SUPPORTED if (scr_is_delta_time_supported() == false) { exit }

#endregion