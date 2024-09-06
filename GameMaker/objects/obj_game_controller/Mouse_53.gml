/// @description Debug
if (global.debug) {
	if (instance_exists(obj_player)) {
		instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_projectile_orbit);
		// obj_entity_player.entity_health--;
	}
}