/// @description Camera Variables
camera_width = camera_get_view_width(view_camera[0]);
camera_height = camera_get_view_height(view_camera[0]);

follow = obj_entity_player;

// Panning left to right only
target_x = x;
target_y = y;

min_view_x = 0 + camera_width / 2;
max_view_x = room_width - camera_width / 2;