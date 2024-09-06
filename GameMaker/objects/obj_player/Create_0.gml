/// @description Initialize Player Variables
event_inherited();

enum CHARACTER_STATS {
	STR,
	DEX,
	CONS,
	INT,
	WIS,
	CHA,
}

entity_health = 10;
entity_max_health = 10;
entity_damage_on_touch = 0;
entity_state = ENTITY_STATE.IDLE;
entity_inner_state = INNER_STATE.ENTER;
mask_index = spr_player_idle;

#region Inputs

key_left = 0;
key_right = 0;
key_up = 0;
key_down = 0;
key_jump = 0;
key_jump_held = 0;

#endregion

#region Movement Variables

max_speed = 2;
h_speed = 0;
v_speed = 0;
grav = 0.5;

jump_buffer = 10; // Frames after leaving ground when we can still jump
jump_speed = -8; // Jump height, more negative = higher
on_ground = true;

accel = .4;
decel = .1;

#endregion

#region Functions

function change_state(_new_state) {
	entity_inner_state = INNER_STATE.ENTER;
	entity_state = _new_state;
}

#endregion