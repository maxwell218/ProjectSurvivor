/// @description Animation
EXIT_IF_FPS_NOT_SUPPORTED

if (entity_state == ENTITY_STATE.MOVING) {
	percent += 2/60; // TODO tie to current gamespeed

	if (percent > 1) percent -= 1;

	position = animcurve_channel_evaluate(rotation_curve, percent);

	var _start = 0;
	var _end = 15;
	var _distance = _end - _start;
	
	image_angle = _start + (_distance * position);
	// bounce_y = _start + (_distance * position);
} else {
	var _current_angle = image_angle;
	
	if (_current_angle != 0) {
		image_angle = lerp(_current_angle, 0, return_speed);
	
		if (abs(_current_angle) < 1) {
			image_angle = 0;
			percent = 0;
		}
	}
}




























