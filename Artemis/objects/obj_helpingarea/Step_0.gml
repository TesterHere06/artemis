if Heal_Cooldown > 0 {
	Heal_Cooldown --
} else {
	Heal_Cooldown += 10
	instance_create_depth(x+random_range(-32,32), y+random_range(-32,32), -3, obj_poofheal)
}
if place_meeting(x, y, obj_enemyParent) or place_meeting(x, y, obj_damagePlayer) {
	instance_create_depth(x+random_range(-32,32), y+random_range(-32,32), -3, obj_poofheal)
	instance_create_depth(x+random_range(-32,32), y+random_range(-32,32), -3, obj_poofheal)
	instance_create_depth(x+random_range(-32,32), y+random_range(-32,32), -3, obj_poofheal)
	instance_destroy();
}