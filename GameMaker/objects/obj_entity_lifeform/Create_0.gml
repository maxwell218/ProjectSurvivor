/// @description Initialize Lifeform Variables
enum ENTITY_STATE {
	IDLE,
	MOVING,
	ATTACK,
	HURT,
	JUMP,
	FALL,
	DEAD,
}

entity_health = 0;
entity_max_health = 0;
entity_damage_on_touch = 0;
entity_state = ENTITY_STATE.IDLE;
entity_inner_state = INNER_STATE.ENTER;

healthbar_height = 3;
healthbar_y_offset = 5;
h_speed = 0;
v_speed = 0;

// x_frac = 0;
// y_frac = 0;

// Animation
rotation_curve = animcurve_get_channel(ac_rotation, "curve1");
rotation_angle = 0;
rotation_return_speed = .25;
rotation_percent = 0;

bounce_curve = animcurve_get_channel(ac_bounce, "curve1");
bounce = 0;
bounce_percent = 0;
bounce_return_speed = .25;


























