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

// Animation
rotation_curve = animcurve_get_channel(ac_rotation, "curve1");
return_speed = .1;
percent = 0;
position = 0;
bounce_y = 0;


























