/// @description Animation & Position Fraction
if (abs(h_speed) > 0 || abs(v_speed) > 0) {
	
	#region Rotation Animation
	
	rotation_percent += 2/60; // TODO tie to current gamespeed

	if (rotation_percent > 1) rotation_percent -= 1;

	var _rotation_position = animcurve_channel_evaluate(rotation_curve, rotation_percent);

	var _start = 0;
	var _end = 15;
	var _distance = _end - _start;
	
	rotation_angle = _start + (_distance * _rotation_position);
	
	#endregion
	
	#region Bounce Animation
	
	bounce_percent += 4/60; // TODO tie to current gamespeed
	
	if (bounce_percent > 1) bounce_percent = 0;
	
	var _bounce_position = animcurve_channel_evaluate(bounce_curve, bounce_percent);
	
	_start = 0;
	_end = 2;
	_distance = _end - _start;
	bounce = _start + (_distance * _bounce_position);
	
	#endregion
	
} else {
	
	#region Rotation Angle Return
	
	var _current_angle = rotation_angle;
	
	if (_current_angle != 0) {
		rotation_angle = lerp(_current_angle, 0, rotation_return_speed);
	
		if (abs(_current_angle) < rotation_return_speed) {
			rotation_angle = 0;
			rotation_percent = 0;
		}
	}
	
	#endregion
	
	#region Bounce Position Return
	
	var _current_bounce_height = bounce;
	
	if (_current_bounce_height != 0) {
		bounce = lerp(_current_bounce_height, 0, bounce_return_speed);
		
		if (_current_bounce_height < bounce_return_speed) {
			bounce = 0;
			bounce_percent = 0;
		}
	}
	
	#endregion
}




























