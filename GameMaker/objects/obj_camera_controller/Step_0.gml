/// @description 
EXIT_IF_FPS_NOT_SUPPORTED;

if (instance_exists(follow)) {
	if (follow != noone) {
		target_x = follow.x;	
		// target_y = follow.y;
	}
}

// Ease in effect
x += (target_x - x) / 25 * DELTA;
y += (target_y - y) / 25 * DELTA;

x = clamp(x, min_view_x, max_view_x);
y = clamp(y, 0, camera_height);

camera_set_view_pos(view_camera[0], x - (camera_width * .5), y);