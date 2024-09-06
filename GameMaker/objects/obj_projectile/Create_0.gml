// Projectile that goes in the direction of the player
// Projectile that orbits the player
// Projectile that auto targets
// Aoe effects

projectile_lifetime = 0;
projectile_damage_on_touch = 0;
projectile_knockback = 0;
projectile_scaling_factor = CHARACTER_STATS.STR;
projectile_effect = 0;	// Poison, stun, slow, charm

// Targets could be random, closest, most hp, least hp, bounce (spread), aoe (fixed)
target_count = 0;