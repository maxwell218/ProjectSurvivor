/// @description Initialize Player Variables
event_inherited();

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

image_angle = 0;

jump_buffer = 10; // Frames after leaving ground when we can still jump
jump_speed = -8; // Jump height, more negative = higher
on_ground = true;

accel = .4;
decel = .2;

#endregion